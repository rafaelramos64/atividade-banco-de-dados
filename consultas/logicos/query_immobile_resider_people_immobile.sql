-- Busca por pessoas usando operador lógico 'OR', 

SELECT role, people_id
FROM people_immobile
WHERE immobile_id > '6'
OR immobile_id < '2';