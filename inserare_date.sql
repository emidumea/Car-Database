-- Inserare date în clienti
INSERT INTO clienti (nume, prenume) VALUES ('Popescu', 'Ion');
INSERT INTO clienti (nume, prenume) VALUES ('Ionescu', 'Maria');
INSERT INTO clienti (nume, prenume) VALUES ('Vasilescu', 'Andrei');
INSERT INTO clienti (nume, prenume) VALUES ('Georgescu', 'Elena');
INSERT INTO clienti (nume, prenume) VALUES ('Dumitrescu', 'Cristian');

-- Inserare date în date_clienti
INSERT INTO date_clienti (serie_ci, nr_ci, strada, oras, nr_telefon, email, id_client)
VALUES ('NT', 123456, 'Strada Mare', 'Bucuresti', '0712345258', 'ion.popescu@yahoo.com', 101);
INSERT INTO date_clienti (serie_ci, nr_ci, strada, oras, nr_telefon, email, id_client)
VALUES ('IS', 234567, 'Strada Lunga', 'Cluj-Napoca', '0722345765', 'maria.ionescu@gmail.com', 102);
INSERT INTO date_clienti (serie_ci, nr_ci, strada, oras, nr_telefon, email, id_client)
VALUES ('BZ', 345678, 'Strada Scurta', 'Timisoara', '0732345774', 'andrei.vasilescu@gmail.com', 103);
INSERT INTO date_clienti (serie_ci, nr_ci, strada, oras, nr_telefon, email, id_client)
VALUES ('CJ', 456789, 'Strada Noua', 'Constanta', '0742345339', 'elena.georgescu@yahoo.com', 104);
INSERT INTO date_clienti (serie_ci, nr_ci, strada, oras, nr_telefon, email, id_client)
VALUES ('DB', 567890, 'Strada Verde', 'Iasi', '0752345869', 'cristian.dumitrescu@yahoo.com', 105);

-- Inserare date în vehicule
INSERT INTO vehicule (marca, model, pret, stare) VALUES ('Toyota', 'Corolla', 20000, 'nou');
INSERT INTO vehicule (marca, model, pret, stare) VALUES ('Toyota', 'Prius', 10000, 'second-hand');
INSERT INTO vehicule (marca, model, pret, stare) VALUES ('Toyota', 'RAV4', 23000, 'nou');


INSERT INTO vehicule (marca, model, pret, stare) VALUES ('Dacia', 'Logan', 15000, 'nou');
INSERT INTO vehicule (marca, model, pret, stare) VALUES ('Dacia', 'Spring', 12000, 'nou');
INSERT INTO vehicule (marca, model, pret, stare) VALUES ('Dacia', 'Duster', 16000, 'nou');

INSERT INTO vehicule (marca, model, pret, stare) VALUES ('Volkswagen', 'Golf', 19000, 'nou');
INSERT INTO vehicule (marca, model, pret, stare) VALUES ('Volkswagen', 'Passat', 12000, 'second-hand');
INSERT INTO vehicule (marca, model, pret, stare) VALUES ('Volkswagen', 'Touareg', 38000, 'nou');

INSERT INTO vehicule (marca, model, pret, stare) VALUES ('BMW', 'Seria 3', 30000, 'nou');
INSERT INTO vehicule (marca, model, pret, stare) VALUES ('BMW', 'Seria 7', 50000, 'nou');
INSERT INTO vehicule (marca, model, pret, stare) VALUES ('BMW', 'X6', 40000, 'second-hand');

INSERT INTO vehicule (marca, model, pret, stare) VALUES ('Audi', 'A4', 25000, 'second-hand');
INSERT INTO vehicule (marca, model, pret, stare) VALUES ('Audi', 'A5', 30000, 'nou');
INSERT INTO vehicule (marca, model, pret, stare) VALUES ('Audi', 'A6', 35000, 'second-hand');

-- Inserare date in date_vehicule
INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1001, 2023, 'Benzina', 30000);
INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1002, 2020, 'Motorina', 120000);
INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1003, 2022, 'Benzina', 50000);

INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1004, 2023, 'Motorina', 16000);
INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1005, 2023, 'Benzina', 10000);
INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1006, 2022, 'Benzina', 40000);

INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1007, 2021, 'Motorina', 30000);
INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1008, 2018, 'Benzina', 200000);
INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1009, 2021, 'Benzina', 60000);

INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1010, 2021, 'Motorina', 70000);
INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1011, 2022, 'Benzina', 55000);
INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1012, 2016, 'Benzina', 250000);

INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1013, 2017, 'Motorina', 180000);
INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1014, 2022, 'Benzina', 40000);
INSERT INTO date_vehicule (cod_vehicul, an_fabricatie, tip_combustibil, kilometraj)
VALUES (1015, 2014, 'Benzina', 250000);

-- Inserare date în dotari
INSERT INTO dotari (descriere_dotare) VALUES ('Aer conditionat');
INSERT INTO dotari (descriere_dotare) VALUES ('Navigatie');
INSERT INTO dotari (descriere_dotare) VALUES ('Camera spate');
INSERT INTO dotari (descriere_dotare) VALUES ('Camere 360');
INSERT INTO dotari (descriere_dotare) VALUES ('Scaune incalzite');
INSERT INTO dotari (descriere_dotare) VALUES ('Senzori parcare');
INSERT INTO dotari (descriere_dotare) VALUES ('Trapa');


-- Inserare date în vehicul_dotari
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1001, 501, 500);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1001, 502, 700);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1001, 507, 800);

INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1002, 502, 1000);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1002, 506, 1000);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1002, 505, 1000);

INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1003, 504, 800);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1003, 505, 800);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1003, 506, 800);

INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1004, 503, 1500);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1004, 506, 1500);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1004, 507, 1500);

INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1005, 505, 1200);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1005, 501, 1200);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1005, 502, 1200);

--
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1006, 501, 500);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1006, 502, 700);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1006, 507, 800);

INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1007, 502, 1000);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1007, 506, 1000);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1007, 505, 1000);

INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1008, 504, 800);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1008, 505, 800);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1008, 506, 800);

INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1009, 503, 1500);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1009, 506, 1500);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1009, 507, 1500);

INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1010, 505, 1200);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1010, 501, 1200);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1010, 502, 1200);
--
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1011, 501, 500);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1011, 502, 700);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1011, 507, 800);

INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1012, 502, 1000);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1012, 506, 1000);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1012, 505, 1000);

INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1013, 504, 800);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1013, 505, 800);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1013, 506, 800);

INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1014, 503, 1500);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1014, 506, 1500);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1014, 507, 1500);

INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1015, 505, 1200);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1015, 501, 1200);
INSERT INTO vehicul_dotari (cod_vehicul, id_dotare, cost_suplimentar) VALUES (1015, 502, 1200);


-- Inserare date în test_drive
INSERT INTO test_drive (data_test_drive, cod_vehicul, id_client) VALUES (SYSDATE + 2, 1001, 101);
INSERT INTO test_drive (data_test_drive, cod_vehicul, id_client) VALUES (SYSDATE + 2, 1011, 105);
INSERT INTO test_drive (data_test_drive, cod_vehicul, id_client) VALUES (SYSDATE + 2, 1013, 103);

INSERT INTO test_drive (data_test_drive, cod_vehicul, id_client) VALUES (SYSDATE + 3, 1002, 102);

INSERT INTO test_drive (data_test_drive, cod_vehicul, id_client) VALUES (SYSDATE + 4, 1008, 103);
INSERT INTO test_drive (data_test_drive, cod_vehicul, id_client) VALUES (SYSDATE + 4, 1006, 101);

INSERT INTO test_drive (data_test_drive, cod_vehicul, id_client) VALUES (SYSDATE + 5, 1004, 104);
INSERT INTO test_drive (data_test_drive, cod_vehicul, id_client) VALUES (SYSDATE + 5, 1007, 105);
INSERT INTO test_drive (data_test_drive, cod_vehicul, id_client) VALUES (SYSDATE + 5, 1010, 102);

INSERT INTO test_drive (data_test_drive, cod_vehicul, id_client) VALUES (SYSDATE + 6, 1009, 105);

-- Inserare date în tranzactii
INSERT INTO tranzactii (data_tranzactie, id_client) VALUES (SYSDATE + 5, 101);
INSERT INTO tranzactii (data_tranzactie, id_client) VALUES (SYSDATE + 6, 102);
INSERT INTO tranzactii (data_tranzactie, id_client) VALUES (SYSDATE + 7, 103);
INSERT INTO tranzactii (data_tranzactie, id_client) VALUES (SYSDATE + 8, 104);
INSERT INTO tranzactii (data_tranzactie, id_client) VALUES (SYSDATE + 9, 105);

INSERT INTO tranzactii (data_tranzactie, id_client) VALUES (SYSDATE + 5, 101);
INSERT INTO tranzactii (data_tranzactie, id_client) VALUES (SYSDATE + 6, 102);
INSERT INTO tranzactii (data_tranzactie, id_client) VALUES (SYSDATE + 7, 101);
INSERT INTO tranzactii (data_tranzactie, id_client) VALUES (SYSDATE + 8, 102);
INSERT INTO tranzactii (data_tranzactie, id_client) VALUES (SYSDATE + 9, 101);
INSERT INTO tranzactii (data_tranzactie, id_client) VALUES (SYSDATE + 8, 103);

-- Inserare date în date_tranzactii
INSERT INTO date_tranzactii (pret, modalitate_plata, tip_finantare, cod_vehicul, id_tranzactie)
VALUES (20000, 'Cash', NULL, 1001, 5001);
INSERT INTO date_tranzactii (pret, modalitate_plata, tip_finantare, cod_vehicul, id_tranzactie)
VALUES (15000, 'Credit', 'Leasing', 1002, 5002);
INSERT INTO date_tranzactii (pret, modalitate_plata, tip_finantare, cod_vehicul, id_tranzactie)
VALUES (18000, 'Credit', 'Rata', 1003, 5003);
INSERT INTO date_tranzactii (pret, modalitate_plata, tip_finantare, cod_vehicul, id_tranzactie)
VALUES (30000, 'Cash', NULL, 1004, 5004);
INSERT INTO date_tranzactii (pret, modalitate_plata, tip_finantare, cod_vehicul, id_tranzactie)
VALUES (25000, 'Credit', 'Leasing', 1005, 5005);

INSERT INTO date_tranzactii (pret, modalitate_plata, tip_finantare, cod_vehicul, id_tranzactie)
VALUES (20000, 'Cash', NULL, 1006, 5006);
INSERT INTO date_tranzactii (pret, modalitate_plata, tip_finantare, cod_vehicul, id_tranzactie)
VALUES (15000, 'Credit', 'Leasing', 1007, 5007);
INSERT INTO date_tranzactii (pret, modalitate_plata, tip_finantare, cod_vehicul, id_tranzactie)
VALUES (18000, 'Credit', 'Rata', 1008, 5008);
INSERT INTO date_tranzactii (pret, modalitate_plata, tip_finantare, cod_vehicul, id_tranzactie)
VALUES (30000, 'Cash', NULL, 1009, 5009);
INSERT INTO date_tranzactii (pret, modalitate_plata, tip_finantare, cod_vehicul, id_tranzactie)
VALUES (25000, 'Credit', 'Leasing', 1010, 5010);

INSERT INTO date_tranzactii (pret, modalitate_plata, tip_finantare, cod_vehicul, id_tranzactie)
VALUES (20000, 'Cash', NULL, 1011, 5011);


COMMIT;
