

-- This creates the database :dbname

drop database if exists detection ;
CREATE DATABASE detection ;


-- This creates the user :username

\c detection postgres

-- erase role if already created
REASSIGN OWNED BY postgres TO mouvzee ;
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM mouvzee ;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public FROM mouvzee ;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public FROM mouvzee ;
DROP OWNED BY mouvzee;
DROP USER IF EXISTS mouvzee ;
CREATE USER mouvzee WITH ENCRYPTED PASSWORD '13070' ;
-- user created



\c detection postgres

-- grant privileges to user

GRANT ALL PRIVILEGES ON DATABASE detection to mouvzee ;

GRANT ALL ON SCHEMA public TO mouvzee ;

