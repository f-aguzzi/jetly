-- Script di inizializzazione per i database

-- Crea i database
CREATE DATABASE customer;
CREATE DATABASE flight;
CREATE DATABASE owner;

-- Dai i privilegi agli utenti
GRANT ALL PRIVILEGES ON DATABASE customer TO myuser;
GRANT ALL PRIVILEGES ON DATABASE flight TO myuser;
GRANT ALL PRIVILEGES ON DATABASE owner TO myuser;
