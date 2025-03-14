-- Use-case 2: Programare test drive
-- Scenariu: Un client programeaza un test drive pentru un vehicul disponibil
-- Testare: Adaugarea unei programari si validarea constrangerilor

-- Adaugare vehicul disponibil
INSERT INTO vehicule (marca, model, pret, stare) VALUES ('BMW', 'X5', 25000, 'nou');

-- Programare test drive pentru vehiculul disponibil
INSERT INTO test_drive (data_test_drive, cod_vehicul, id_client)
VALUES (TO_DATE('07.03.2025', 'DD.MM.YYYY'), 
    (SELECT cod_vehicul FROM vehicule WHERE marca = 'BMW' AND model = 'X5'),
    (SELECT id_client FROM clienti WHERE nume = 'Mihailescu'));

-- Verificare
SELECT * FROM test_drive WHERE id_client = (SELECT id_client FROM clienti WHERE nume = 'Mihailescu');

--------------------------------------------------------------------------------