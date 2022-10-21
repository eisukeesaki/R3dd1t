CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE OR REPLACE FUNCTION update_modified_column() 
RETURNS TRIGGER AS $$
BEGIN
    NEW.modified = now();
    RETURN NEW; 
END;
$$ language 'plpgsql';

CREATE TABLE users (
    id UUID PRIMARY KEY,
    email varchar(50) NOT NULL UNIQUE,
    username varchar(50) NOT NULL,
    created TIMESTAMP NOT NULL
        DEFAULT (CURRENT_TIMESTAMP), 
    modified TIMESTAMP
);
CREATE TRIGGER update_users_modtime BEFORE UPDATE ON users FOR EACH ROW EXECUTE PROCEDURE update_modified_column();

