-- Anulare test drive

-- Identificare toate test drive-urile pentru clientul specific
SELECT td.id_test_drive, td.data_test_drive, v.marca, v.model
FROM test_drive td
JOIN clienti c ON td.id_client = c.id_client
JOIN vehicule v ON td.cod_vehicul = v.cod_vehicul
WHERE c.nume = 'Mihailescu' AND c.prenume = 'Matei';
  
-- Anulăm un test drive
DELETE FROM test_drive
WHERE id_client = (SELECT id_client FROM clienti WHERE nume = 'Mihailescu' AND prenume = 'Matei')
  AND cod_vehicul = (SELECT cod_vehicul FROM vehicule WHERE marca = 'BMW' AND model = 'X5')
    AND data_test_drive = (TO_DATE('07.03.2025','DD.MM.YYYY'));

-- Verificare ștergere
SELECT * 
FROM test_drive
WHERE id_client = (SELECT id_client FROM clienti WHERE nume = 'Mihailescu' AND prenume = 'Matei');
