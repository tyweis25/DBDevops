--liquibase formatted sql

--changeset Ty Weis:2
CREATE TABLE example_table (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

--rollback DROP TABLE example_table;