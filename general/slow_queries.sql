-- slow queries
SELECT *
  FROM pg_stat_statements
 ORDER BY total_time DESC;