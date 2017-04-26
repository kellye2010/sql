-- insert patients into th patients

-- -- original, without select statements
-- INSERT INTO
--   patients(family_name, given_name, gender, height, weight, born_on)
-- VALUES
--   ('Jett', 'Joan', 'f', 65, 120, '1958-09-22'),
--   ('Rollins', 'Henry', 'm', 69, 210, '1961-02-13');


  INSERT INTO
    patients(family_name, given_name, gender, height, weight, born_on)
  SELECT 'Jett', 'Joan', 'f', 65, 120, DATE '1958-09-22'
  UNION
  SELECT 'Rollins', 'Henry', 'm', 69, 210, '1961-02-13';
