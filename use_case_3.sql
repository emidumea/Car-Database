-- Use-case 3: Finalizare achizitie vehicul
-- Scenariu: Un client achizitioneaza un vehicul, iar stocul vehiculului este actualizat
-- Testare: Creare tranzactie si inregistrare date tranzactie

-- Adaugare tranzactie
INSERT INTO tranzactii (data_tranzactie, id_client)
VALUES (SYSDATE, (SELECT id_client FROM clienti WHERE nume = 'Mihailescu' AND ROWNUM = 1));

SELECT * FROM tranzactii;
-- Inregistrare detalii tranzactie
INSERT INTO date_tranzactii (pret, modalitate_plata, cod_vehicul, id_tranzactie)
VALUES (25000, 'Cash', 
    (SELECT cod_vehicul FROM vehicule WHERE marca = 'BMW' AND model = 'X5'),
    (SELECT id_tranzactie FROM tranzactii WHERE id_client = (SELECT id_client FROM clienti WHERE nume = 'Mihailescu' AND ROWNUM = 1)));

-- Verificare
SELECT * FROM date_tranzactii WHERE id_tranzactie = (SELECT id_tranzactie FROM tranzactii WHERE id_client = (SELECT id_client FROM clienti WHERE nume = 'Mihailescu'));
