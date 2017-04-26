-- retrieve information about patients



-- how many ingredients start with 'T'

-- how do patients identify their gender as a whole?
SELECT gender, COUNT(*)
FROM patients
GROUP BY gender
;
-- how many identify as female?
SELECT gender, COUNT(*)
FROM patients
WHERE gender = 'f'
GROUP BY gender
;

-- how many senior patients are female?
