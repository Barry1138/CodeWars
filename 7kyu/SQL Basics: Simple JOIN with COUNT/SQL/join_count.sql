SELECT 
  p.id,
  p.name,
COUNT(t.name) AS toy_count
FROM people AS p
LEFT JOIN toys AS t
ON p.id = t.people_id
GROUP BY p.id, p.name;
