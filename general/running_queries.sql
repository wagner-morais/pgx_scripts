-- show running queries
SELECT pid, age(query_start, clock_timestamp()), usename, query 
  FROM pg_stat_activity 
 WHERE query != '<IDLE>' AND query NOT ILIKE '%pg_stat_activity%' 
 ORDER BY query_start desc;