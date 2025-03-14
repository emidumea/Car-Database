-- SELECT-uri pentru vizualizare

-- Vizualizare vehicule cumparate de un client
SELECT c.nume, c.prenume, v.marca, v.model, t.data_tranzactie, dt.pret
FROM clienti c
JOIN tranzactii t ON c.id_client = t.id_client
JOIN date_tranzactii dt ON t.id_tranzactie = dt.id_tranzactie
JOIN vehicule v ON dt.cod_vehicul = v.cod_vehicul
ORDER BY c.nume;

-- Vizualizare test drive-uri programate
SELECT c.nume, c.prenume, v.marca, v.model, td.data_test_drive
FROM clienti c
JOIN test_drive td ON c.id_client = td.id_client
JOIN vehicule v ON td.cod_vehicul = v.cod_vehicul;


-- Vizualizare dotari vehicule si costurile lor suplimentare
SELECT v.marca, v.model, d.descriere_dotare, vd.cost_suplimentar
FROM vehicule v
JOIN vehicul_dotari vd ON v.cod_vehicul = vd.cod_vehicul
JOIN dotari d ON vd.id_dotare = d.id_dotare
ORDER BY v.marca, v.model;

-- Vizualizare vehicule disponibile
SELECT v.marca, v.model, v.pret, v.stare
FROM vehicule v
LEFT JOIN date_tranzactii dt ON v.cod_vehicul = dt.cod_vehicul
WHERE dt.cod_vehicul IS NULL
ORDER BY v.pret;

-- Clienti care au realizat cele mai multe tranzactii
SELECT c.nume, c.prenume, COUNT(t.id_tranzactie) AS numar_tranzactii
FROM clienti c
JOIN tranzactii t ON c.id_client = t.id_client
GROUP BY c.nume, c.prenume
ORDER BY numar_tranzactii DESC;

-- Vizualizare vehicule cu cele mai multe dotari
SELECT v.marca, v.model, COUNT(vd.id_dotare) AS numar_dotari
FROM vehicule v
JOIN vehicul_dotari vd ON v.cod_vehicul = vd.cod_vehicul
GROUP BY v.marca, v.model
ORDER BY numar_dotari DESC;


-- Incasari pe fiecare luna
SELECT TO_CHAR(t.data_tranzactie, 'YYYY-MM') AS luna, SUM(dt.pret) AS venit_total
FROM tranzactii t
JOIN date_tranzactii dt ON t.id_tranzactie = dt.id_tranzactie
GROUP BY TO_CHAR(t.data_tranzactie, 'YYYY-MM')
ORDER BY luna DESC;

-- Testare constrangeri

-- Test PK: Cheie primara duplicata
-- ORA-00001: unique constraint (BD131.CLIENTI_PK) violated
INSERT INTO clienti (id_client, nume, prenume) VALUES (101, 'Popescu', 'Ion');

-- Test NN: Coloana NULL (valoare NULL in coloana obligatorie)
-- SQL Error: ORA-01400: cannot insert NULL into ("BD131"."CLIENTI"."NUME")
INSERT INTO clienti (nume, prenume) VALUES (NULL, 'Andrei');

-- Test UK: Email duplicat (valoare duplicata pentru cheie unica)
-- ORA-00001: unique constraint (BD131.DATE_CLIENTI__IDX) violated
INSERT INTO date_clienti (serie_ci, nr_ci, strada, oras, nr_telefon, email, id_client)
VALUES ('AB', 123457, 'Test Street', 'Test City', '0712345679', 'ion.popescu@yahoo.com', 2);

-- Test CK: Pret negativ
-- ORA-02290: check constraint (BD131.VEHICULE_PRET_CK) violated
INSERT INTO vehicule (marca, model, pret, stare) VALUES ('BMW', 'x5', -5000, 'nou');

-- Test FK: Referinta la o cheie straina inexistenta
-- ORA-02291: integrity constraint (BD131.VEHICULE_TEST_DRIVE_FK) violated - parent key not found
INSERT INTO test_drive (data_test_drive, cod_vehicul, id_client) VALUES (SYSDATE + 5, 999, 1);

-- Test Trigger: Dată test drive în trecut
-- ORA-20001: Data invalida: trebuie sa fie mai mare decat data curenta
INSERT INTO test_drive (data_test_drive, cod_vehicul, id_client) VALUES (SYSDATE - 2, 1001, 101);

-- Test Trigger: Dată tranzacție în trecut
-- ORA-20001: Data invalida: trebuie sa fie mai mare decat data curenta
INSERT INTO tranzactii (data_tranzactie, id_client) VALUES (TO_DATE('03.11.2018', 'DD.MM.YYYY'), 101);

-- Test CK: Tip combustibil invalid
-- ORA-02290: check constraint (BD131.DATE_VEH_TIP_COMB_CK) violated
INSERT INTO date_vehicule (an_fabricatie, tip_combustibil, kilometraj, cod_vehicul) 
VALUES (2023, 'Gaz', 5000, 1002);

-- Test FK: Cheie straina invalida (dotare inexistentă)
-- ORA-02291: integrity constraint (BD131.DOTARI_VEHICUL_DOTARI_FK) violated
INSERT INTO vehicul_dotari (cost_suplimentar, cod_vehicul, id_dotare) VALUES (100, 1001, 999);

-- Operații de modificare

-- Actualizare informații despre client
UPDATE clienti SET nume = 'Ionescu', prenume = 'Mihai' WHERE id_client = 101;

-- Actualizare preț vehicul
UPDATE vehicule SET pret = pret + 500 WHERE cod_vehicul = 1001;

-- Actualizare cost suplimentar dotare
UPDATE vehicul_dotari SET cost_suplimentar = cost_suplimentar + 50 WHERE id_dotare = 501;

-- Actualizare stare vehicul
UPDATE vehicule SET stare = 'second-hand' WHERE cod_vehicul = 1001;

-- Operații de ștergere

-- Ștergere client 
DELETE FROM test_drive WHERE id_client = 101;
DELETE FROM date_tranzactii WHERE id_tranzactie IN (SELECT id_tranzactie FROM tranzactii WHERE id_client = 101);
DELETE FROM tranzactii WHERE id_client = 101;
DELETE FROM date_clienti WHERE id_client = 101;
DELETE FROM clienti WHERE id_client = 101;


-- Ștergere vehicul
DELETE FROM vehicul_dotari WHERE cod_vehicul = 1002;
DELETE FROM date_tranzactii WHERE cod_vehicul = 1002;
DELETE FROM tranzactii WHERE id_tranzactie IN (SELECT id_tranzactie FROM date_tranzactii WHERE cod_vehicul = 1002);

------------------ Adăugare dotări
INSERT INTO dotari (id_dotare, descriere_dotare)
VALUES (401, 'Sistem audio Bose');

INSERT INTO dotari (id_dotare, descriere_dotare)
VALUES (402, 'Senzori parcare');

-- Asocierea dotărilor cu un vehicul
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar)
VALUES (1001, 401, 1500);

INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar)
VALUES (1001, 402, 800);

-- Verificare asociere dotări
SELECT v.marca, v.model, d.descriere_dotare, vd.cost_suplimentar
FROM vehicule v
JOIN vehicul_dotari vd ON v.cod_vehicul = vd.cod_vehicul
JOIN dotari d ON vd.id_dotare = d.id_dotare
WHERE v.cod_vehicul = 1001;


COMMIT;
