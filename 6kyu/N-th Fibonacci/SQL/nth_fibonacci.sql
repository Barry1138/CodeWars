SELECT DISTINCT n,
CAST(
        FLOOR(0.5 + (POWER(0.5 * (1 + SQRT(5)), n - 1)) / SQRT(5))
AS BIGINT)
AS res FROM fibo ORDER BY n ASC;
