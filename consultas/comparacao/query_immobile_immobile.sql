-- Busca por imóvel usando operadores comparativos '=', '<='

SELECT title, description, remaning_vacancies
FROM immobile
WHERE allowed_only_women = 'YES'
AND amount_price <= 200;