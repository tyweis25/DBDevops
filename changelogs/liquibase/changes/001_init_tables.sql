--liquibase formatted sql

--changeset yourname:1
--comment: Initial setup of the guinea_pig table
CREATE TABLE guinea_pigs (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    breed VARCHAR(50),
    status VARCHAR(20) DEFAULT 'healthy',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

--rollback DROP TABLE guinea_pigs;