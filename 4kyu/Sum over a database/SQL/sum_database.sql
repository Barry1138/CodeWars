/*SELECT sum(t.tablename, c.column_name) AS total
FROM pg_catalog.pg_tables as t
join information_schema.columns as c  on c.table_name=t.tablename and c.data_type='integer'
WHERE schemaname != 'pg_catalog' AND 
    schemaname != 'information_schema';*/

-- SELECT 0 AS total;
CREATE OR REPLACE FUNCTION pg_catalog.calcTotal ()

RETURNS BIGINT AS $$

DECLARE

table_name text;
col_name text;
val BIGINT := 0;
total BIGINT := 0;

BEGIN

FOR table_name, col_name IN SELECT t.tablename, c.column_name
FROM pg_catalog.pg_tables as t
join information_schema.columns as c  on c.table_name=t.tablename and c.data_type='integer'
WHERE schemaname != 'pg_catalog' AND 
    schemaname != 'information_schema' LOOP
val := 0;
EXECUTE 'SELECT sum(' || col_name || ') FROM ' || table_name into val;

IF val IS NOT NULL then
  total := val + total;
end if;

END LOOP;

RETURN total;
END;

$$  LANGUAGE plpgsql;

SELECT pg_catalog.calcTotal() AS total;
