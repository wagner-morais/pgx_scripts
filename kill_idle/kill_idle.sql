-- kill idle query
SELECT pg_terminate_backend(procpid);
