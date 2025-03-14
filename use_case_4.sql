-- Use-case 4: Adaugare dotari la un vehicul
-- Scenariu: Se adauga dotari optionale unui vehicul si se actualizeaza costurile suplimentare
-- Testare: Validare cost suplimentar pozitiv si asociere corecta dotare-vehicul

-- Adaugare dotare
INSERT INTO dotari (descriere_dotare) VALUES ('Sistem audio premium');
INSERT INTO dotari (descriere_dotare) VALUES ('Scaune Incalzite');

-- Asociere dotare vehicul
INSERT INTO vehicul_dotari (cost_suplimentar, cod_vehicul, id_dotare)
VALUES (1000, 
    (SELECT cod_vehicul FROM vehicule WHERE marca = 'BMW' AND model = 'X5'),
    (SELECT id_dotare FROM dotari WHERE descriere_dotare = 'Sistem audio premium'));
    
INSERT INTO vehicul_dotari (cost_suplimentar, cod_vehicul, id_dotare)
VALUES (700, 
    (SELECT cod_vehicul FROM vehicule WHERE marca = 'BMW' AND model = 'X5'),
    (SELECT id_dotare FROM dotari WHERE descriere_dotare = 'Scaune Incalzite'));

-- Actualizare cost vehicul cu cost suplimentar al dotarii
UPDATE vehicule
SET pret = pret + (
    SELECT cost_suplimentar 
    FROM vehicul_dotari
    WHERE cod_vehicul = vehicule.cod_vehicul
      AND id_dotare = (SELECT id_dotare FROM dotari WHERE descriere_dotare = 'Sistem audio premium'))
      + ( SELECT cost_suplimentar 
    FROM vehicul_dotari
    WHERE cod_vehicul = vehicule.cod_vehicul
      AND id_dotare = (SELECT id_dotare FROM dotari WHERE descriere_dotare = 'Scaune Incalzite')
)
WHERE cod_vehicul = (SELECT cod_vehicul FROM vehicule WHERE marca = 'BMW' AND model = 'X5');

-- Verificare vehicul_dotari
SELECT * 
FROM vehicul_dotari 
WHERE cod_vehicul = (SELECT cod_vehicul FROM vehicule WHERE marca = 'BMW' AND model = 'X5');

-- Verificare pret actualizat
SELECT marca, model, pret 
FROM vehicule 
WHERE cod_vehicul = (SELECT cod_vehicul FROM vehicule WHERE marca = 'BMW' AND model = 'X5');
