-- unused indexes
SELECT
  indexrelid::regclass as index,
  relid::regclass as table,
  'DROP INDEX ' || indexrelid::regclass || ';' as drop_statement
 FROM
  pg_stat_user_indexes
  JOIN
  pg_index USING (indexrelid)
 WHERE idx_scan = 0
   AND indisunique is false;
