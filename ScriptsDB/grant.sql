
\c detection postgres

-- user already exists
GRANT ALL PRIVILEGES ON DATABASE detection to mouvzee ;


ALTER TABLE dataTable OWNER TO mouvzee ;
ALTER TABLE averageTable OWNER TO mouvzee ;
ALTER TABLE covarianceTable OWNER TO mouvzee ;
ALTER TABLE anomalyAverageTable OWNER TO mouvzee ;
ALTER TABLE anomalyCovarianceTable OWNER TO mouvzee ;
ALTER TABLE MonitorLogTable OWNER TO mouvzee ;

-- grant all privileges on all tables in schema public to mouvzee ;
-- grant all privileges on all sequences in schema public to mouvzee ;

GRANT ALL ON SCHEMA public TO mouvzee ;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO mouvzee ;
