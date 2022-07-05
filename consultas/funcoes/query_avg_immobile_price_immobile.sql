-- Busca por média de valor de aluguel de imóvel usando função AVG

SELECT AVG(amount_price)
FROM immobile
WHERE NOT allowed_only_women = 'YES';

