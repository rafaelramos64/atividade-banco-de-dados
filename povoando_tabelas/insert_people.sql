INSERT INTO people(
  id,
  email,
  first_name,
  last_name,
  salt,
  hash,
  external_identifier,
  document,
  profile_type,
  gender,
  age,
  status
)

VALUES
	('1', 'rafael@gmail.com', 'Rafael', 'Ramos', 'salt', '#', '1', '3663185', 'STUDENT', 'MAN', 21, 'VALID'),
  ('2', 'mugen@gmail.com', 'Mugen', 'Tsuko', 'salt2', '##', '2', '3663186', 'STUDENT', 'OTHER', 24, 'VALID'),
  ('3', 'nikole@gmail.com', 'Nikole', 'Ramos', 'salt3', '#3', '3', '3663187', 'ADMIN', 'WOMEN', 15, 'VALID'),
  ('4', 'ramos@gmail.com', 'Ramos', 'Fc', 'salt4', '#4', '4', '3663188', 'ADMIN', 'MAN', 26, 'VALID'),
  ('5', 'marinalva@gmail.com', 'Marinalva', 'Ramos', 'salt5', '#5', '5', '3663189', 'ADMIN', 'WOMEN', 35, 'VALID'),
  ('6', 'edivan@gmail.com', 'Edivan', 'Sousa', 'salt6', '#6', '6', '3663180', 'STUDENT', 'MAN', 26, 'VALID'),
  ('7', 'joao@gmail.com', 'João', 'Pedroso', 'salt7', '#7', '7', '3663123', 'ADMIN', 'MAN', 20, 'VALID'),
  ('8', 'dani@gmail.com', 'Dani', 'Ela', 'salt8', '#8', '8', '3663124', 'STUDENT', 'WOMEN', 20, 'VALID'),
	('9', 'aquino@gmail.com', 'Aquino', 'Rego', 'salt9', '#9', '9', '3663125', 'STUDENT', 'MAN', 21, 'VALID'),
  ('10', 'jackson@gmail.com', 'Jackson', 'Aquino', 'salt10', '#10', '10', '3663126', 'ADMIN', 'MAN', 22, 'VALID');
