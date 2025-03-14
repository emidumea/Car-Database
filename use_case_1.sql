-- Use-case 1: Adaugare client si completare date personale
-- Scenariu: Un client nou este adaugat in baza de date si se adauga informatiile sale personale
-- Testare: Adaugarea unui client fara date personale, adaugarea ulterioara a acestora

-- Adaugare client fara date personale
INSERT INTO clienti (nume, prenume) VALUES ('Mihailescu', 'Matei');

SELECT * FROM clienti;

-- Adaugare date personale pentru clientul nou
INSERT INTO date_clienti (serie_ci, nr_ci, strada, oras, nr_telefon, email, id_client)
VALUES ('AB', 123456, 'Strada Florilor', 'Bucuresti', '0712345678', 'mihailescu.matei@yahoo.com', 
    (SELECT id_client FROM clienti WHERE nume = 'Mihailescu' AND prenume = 'Matei'));

SELECT SERIE_CI ,
NR_CI ,
STRADA ,
ORAS ,
NR_TELEFON ,
EMAIL ,
ID_CLIENT  FROM date_clienti WHERE id_client = (SELECT id_client FROM clienti WHERE nume = 'Mihailescu');