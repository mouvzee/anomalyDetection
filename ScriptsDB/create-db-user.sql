

-- This creates the database :dbname

drop database if exists pippi ;
CREATE DATABASE pippi ;


-- This creates the user :username

\c pippi postgres

-- erase role if already created
REASSIGN OWNED BY postgres TO mouvzee ;
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM mouvzee ;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public FROM mouvzee ;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public FROM mouvzee ;
DROP OWNED BY mouvzee;
DROP USER IF EXISTS mouvzee ;
CREATE USER mouvzee WITH ENCRYPTED PASSWORD '13070' ;
-- user created



\c pippi postgres

-- grant privileges to user

GRANT ALL PRIVILEGES ON DATABASE pippi to mouvzee ;

GRANT ALL ON SCHEMA public TO mouvzee ;

