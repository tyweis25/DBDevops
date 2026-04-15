--liquibase formatted sql

--changeset Ty Weis:1
CREATE TABLE test_table (
    id INT NOT NULL IDENTITY(1,1),
    name NVARCHAR(50) NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (id)
);
--rollback DROP TABLE test_table;