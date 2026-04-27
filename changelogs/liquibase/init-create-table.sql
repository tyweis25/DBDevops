--liquibase formatted sql

--changeset your.name:1
CREATE TABLE example_table (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--rollback DROP TABLE example_table;