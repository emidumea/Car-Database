-- Use-case 5: Anulare tranzactie
-- Scenariu: O tranzactie este anulata, iar vehiculul este readaugat in stoc
-- Testare: Stergere tranzactie si verificare consistenta datelor

-- Stergere tranzactie
DELETE FROM date_tranzactii WHERE id_tranzactie = (SELECT id_tranzactie FROM tranzactii WHERE id_client = (SELECT id_client FROM clienti WHERE nume = 'Mihailescu'));
DELETE FROM tranzactii WHERE id_client = (SELECT id_client FROM clienti WHERE nume = 'Mihailescu');

-- Verificare
SELECT * FROM tranzactii WHERE id_client = (SELECT id_client FROM clienti WHERE nume = 'Mihailescu');
SELECT * FROM date_tranzactii WHERE cod_vehicul = (SELECT cod_vehicul FROM vehicule WHERE marca = 'BMW' AND model = 'X5');