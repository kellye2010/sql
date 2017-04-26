-- retrieve information about books

what are all the books?
select * from books

what are the ten oldest books
select title from books ORDER BY first_published ASC LIMIT 10

what are the ten newest books
select title from books ORDER BY first_published DESC LIMIT 10

which authors have more than 1 book published?
  select author, COUNT(*) FROM books LIMIT 3;
  -- to do an aggregate, you need to do a GROUPBY
  select author, COUNT(*)
  FROM books
  GROUP BY author
  LIMIT 3;
  -- but you also need a HAVING
  select author, COUNT(*)
  FROM books
  GROUP BY author
  HAVING COUNT(*)>1
  LIMIT 3;
  -- you can order these as well
  select author, COUNT(*)
  FROM books
  GROUP BY author
  HAVING COUNT(*)>1
  ORDER BY COUNT(*)
  LIMIT 3;
