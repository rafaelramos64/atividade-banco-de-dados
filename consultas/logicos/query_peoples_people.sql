-- Busca por pessoas usando operadores lógicos 'AND' 'NOT', 

SELECT first_name, last_name, document
FROM people
WHERE 
NOT gender != 'WOMEN'
AND status = 'VALID';