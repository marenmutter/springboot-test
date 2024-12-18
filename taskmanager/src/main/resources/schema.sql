CREATE TABLE IF NOT EXISTS users (
                                     id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                     username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL
    );

CREATE TABLE IF NOT EXISTS task (
                                    id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                    description TEXT,
                                    status VARCHAR(50),
    title VARCHAR(255),
    user_id BIGINT,
    FOREIGN KEY (user_id) REFERENCES users(id)
    );

CREATE TABLE IF NOT EXISTS project (
                                       id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                       created_date DATE,
                                       description TEXT,
                                       name VARCHAR(255)
    );
