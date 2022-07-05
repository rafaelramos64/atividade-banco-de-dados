-- Busca por quantidade de estudandes usando a função COUNT

SELECT COUNT(profile_type)
FROM people
WHERE profile_type != 'STUDENT'
