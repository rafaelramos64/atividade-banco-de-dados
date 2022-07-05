-- Busca por imagens de imóveis usando operador lógico 'AND'

SELECT url, description
FROM file
WHERE immobile_id < '5'
AND immobile_id >= '7';
