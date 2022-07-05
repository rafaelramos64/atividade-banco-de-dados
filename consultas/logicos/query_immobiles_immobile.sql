-- Busca por imóveis usando operadores lógicos 'AND' 'NOT', 

SELECT title, description
FROM immobile
WHERE 
NOT allowed_only_women = 'YES'
AND remaning_vacancies >= '2'
AND amount_price < '260';
