-- kill running query
SELECT pg_cancel_backend(procpid);
