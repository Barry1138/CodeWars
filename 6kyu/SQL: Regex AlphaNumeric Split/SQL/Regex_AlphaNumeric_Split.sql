/*  SQL  */

SELECT 
    project,
    regexp_replace(address, '[^a-zA-Z]', '', 'g') AS letters,
    regexp_replace(address, '[^0-9]', '', 'g') AS numbers
FROM 
    repositories;
