-- Busca por imóveis com avaliação de mais de 4 estrelas usando operador comparativo '>'

SELECT comment, people_id, immobile_id
FROM rating
WHERE stars > '4';
