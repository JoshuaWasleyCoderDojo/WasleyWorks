-- SQL script to create the database and users table

CREATE DATABASE login_db;

USE login_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Insert a sample user (password: 'password')
INSERT INTO users (username, password) VALUES ('testuser', PASSWORD_HASH('password', PASSWORD_DEFAULT));