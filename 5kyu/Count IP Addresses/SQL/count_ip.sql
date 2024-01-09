CREATE FUNCTION get_ip_address_count(ip_first varchar, ip_last varchar)
RETURNS bigint

language plpgsql
as
$$
declare
   ip_count bigint;
begin
        SELECT
        (CAST(SPLIT_PART(ip_last, '.', 4) AS bigint) +
         CAST(SPLIT_PART(ip_last, '.', 3) AS bigint) * 256 +
         CAST(SPLIT_PART(ip_last, '.', 2) AS bigint) * 65536 +
         CAST(SPLIT_PART(ip_last, '.', 1) AS bigint) * 16777216) -
         
         (CAST(SPLIT_PART(ip_first, '.', 4) AS bigint) +
         CAST(SPLIT_PART(ip_first, '.', 3) AS bigint) * 256 +
         CAST(SPLIT_PART(ip_first, '.', 2) AS bigint) * 65536 +
         CAST(SPLIT_PART(ip_first, '.', 1) AS bigint) * 16777216)
         INTO ip_count;
         
         RETURN ip_count;
end;
$$;

SELECT ip.id, get_ip_address_count(ip.first, ip.last) AS ips_between
FROM ip_addresses AS ip;

--bp
SELECT id, last::inet - first::inet as ips_between
FROM ip_addresses;
