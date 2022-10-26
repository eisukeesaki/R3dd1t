-- EXTENSIONS
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- FUNCTIONS
CREATE OR REPLACE FUNCTION update_modified_column() 
    RETURNS TRIGGER AS $$
    BEGIN
        NEW.modified = now();
        RETURN NEW; 
    END;
    $$ language 'plpgsql';

-- USERS
CREATE TABLE users (
    id UUID
        PRIMARY KEY,
    email varchar(50)
        NOT NULL
        UNIQUE,
    name varchar(50)
        NOT NULL,
    created TIMESTAMP
        NOT NULL
        DEFAULT (CURRENT_TIMESTAMP), 
    modified TIMESTAMP
);
CREATE TRIGGER update_users_modtime
    BEFORE UPDATE
    ON users
    FOR EACH ROW
        EXECUTE PROCEDURE update_modified_column();

-- COMMUNITIES
CREATE TABLE communities (
    id UUID
        PRIMARY KEY,
    name varchar(50)
        NOT NULL UNIQUE,
    description varchar(250),
    created TIMESTAMP NOT NULL
        DEFAULT (CURRENT_TIMESTAMP), 
    modified TIMESTAMP
);
CREATE TRIGGER update_communities_modtime
    BEFORE UPDATE
    ON communities
    FOR EACH ROW
        EXECUTE PROCEDURE update_modified_column();

-- MEMBERSHIPS
CREATE TABLE memberships (
    id UUID
        PRIMARY KEY,
    _user UUID
        REFERENCES users
        ON DELETE CASCADE NOT NULL,
    _community UUID
        REFERENCES communities
        ON DELETE CASCADE NOT NULL,
    created TIMESTAMP NOT NULL
        DEFAULT (CURRENT_TIMESTAMP), 
    modified TIMESTAMP
);
CREATE TRIGGER update_memberships_modtime
    BEFORE UPDATE
    ON memberships
    FOR EACH ROW
        EXECUTE PROCEDURE update_modified_column();

-- POSTS
CREATE TABLE posts (
    id UUID
        PRIMARY KEY,
    _user UUID DEFAULT uuid_nil ()
        REFERENCES users
        ON DELETE SET DEFAULT,
    _community UUID
        REFERENCES communities
        ON DELETE CASCADE NOT NULL,
    title varchar(100) NOT NULL,
    body varchar(1000),
    created TIMESTAMP NOT NULL
        DEFAULT (CURRENT_TIMESTAMP), 
    modified TIMESTAMP
);
CREATE TRIGGER update_posts_modtime
    BEFORE UPDATE
    ON posts
    FOR EACH ROW
        EXECUTE PROCEDURE update_modified_column();

-- VOTES_POSTS
CREATE TABLE votes_posts (
    id UUID
        PRIMARY KEY,
    _user UUID DEFAULT uuid_nil ()
        REFERENCES users
        ON DELETE SET DEFAULT,
    _post UUID
        REFERENCES posts
        ON DELETE CASCADE,
    value INTEGER
        NOT NULL
        CHECK (-1 <= value and value <= 1),
    created TIMESTAMP NOT NULL
        DEFAULT (CURRENT_TIMESTAMP), 
    modified TIMESTAMP
);
CREATE TRIGGER update_votes_posts_modtime
    BEFORE UPDATE
    ON votes_posts
    FOR EACH ROW
        EXECUTE PROCEDURE update_modified_column();

-- COMMENTS
CREATE TABLE comments (
    id UUID
        PRIMARY KEY,
    _user UUID DEFAULT uuid_nil ()
        REFERENCES users
        ON DELETE SET DEFAULT,
    _post UUID
        REFERENCES posts
        ON DELETE CASCADE,
    _parent UUID DEFAULT uuid_nil ()
        REFERENCES comments
        ON DELETE SET DEFAULT,
    body varchar(1000) NOT NULL,
    created TIMESTAMP NOT NULL
        DEFAULT (CURRENT_TIMESTAMP), 
    modified TIMESTAMP
);
CREATE TRIGGER update_comments_modtime
    BEFORE UPDATE
    ON comments
    FOR EACH ROW
        EXECUTE PROCEDURE update_modified_column();

-- VOTES_COMMENTS
CREATE TABLE votes_comments (
    id UUID
        PRIMARY KEY,
    _user UUID DEFAULT uuid_nil ()
        REFERENCES users
        ON DELETE SET DEFAULT,
    _comment UUID
        REFERENCES comments
        ON DELETE CASCADE,
    value INTEGER
        NOT NULL
        CHECK (-1 <= value and value <= 1),
    created TIMESTAMP NOT NULL
        DEFAULT (CURRENT_TIMESTAMP), 
    modified TIMESTAMP
);
CREATE TRIGGER update_votes_comments_modtime
    BEFORE UPDATE
    ON votes_comments
    FOR EACH ROW
        EXECUTE PROCEDURE update_modified_column();

