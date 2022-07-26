--Questão 1:
SELECT users.id, users.name, cities.name AS city FROM users
JOIN cities ON users."cityId" = cities.id
WHERE cities.name = 'Rio de Janeiro';
--Para ordenar alfabéticamente:
--ORDER BY users.name ASC;

--Questão 2:
SELECT testimonials.id, writers.name AS writer, recipients.name AS recipient, testimonials.message FROM testimonials
JOIN users writers 
ON testimonials."writerId" = writers.id
JOIN users recipients 
ON testimonials."recipientId" = recipients.id
ORDER BY testimonials.id ASC;

--Questão 3:
SELECT users.id, users.name, courses.name AS course, schools.name AS school, educations."endDate" 
FROM educations
JOIN users 
ON users.id = 30
JOIN courses 
ON educations."courseId" = courses.id
AND educations.status = 'finished'
JOIN schools 
ON educations."schoolId" = schools.id;

--Questão 4:
SELECT users.id, users.name, roles.name AS "role", companies.name AS company, experiences."startDate" 
FROM experiences
JOIN users 
ON users.id = 50
JOIN roles 
ON experiences."roleId" = roles.id
AND experiences."endDate" IS NULL
JOIN companies 
ON experiences."companyId" = companies.id;