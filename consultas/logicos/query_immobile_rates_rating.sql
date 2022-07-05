-- Busca por avaliações de imóvel usando operador lógico 'OR', 'AND', 'NOT', 

SELECT comment, stars
FROM rating
WHERE stars > '5'
OR stars > '4'
AND NOT immobile_id = '5';
