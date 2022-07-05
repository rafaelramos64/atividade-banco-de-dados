-- Busca por soma, média. quantidade mínima e máxima e quantindade total de homens funções SUM, AVG, MIN, MAX, COUNT

SELECT SUM(age), AVG(age), MIN(age), MAX(age), COUNT(gender)
FROM people
WHERE last_name NOT LIKE 'R % s'
AND NOT gender = 'WOMEN';

