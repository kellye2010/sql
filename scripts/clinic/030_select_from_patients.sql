-- retrieve information about patients

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
SELECT gender, COUNT(*)
FROM patients
WHERE gender = 'f' AND date_part('year', age(born_on)) >= 65
GROUP BY gender
;

-- how many patients are in each age range
SELECT COUNT(*),
  CASE
    WHEN date_part('year', age(born_on)) < 16
      THEN 'child'
    WHEN date_part('year', age(born_on)) < 64
      THEN 'senior'
    ELSE 'adult'
  END AS age_category
FROM patients
GROUP BY age_category
;
