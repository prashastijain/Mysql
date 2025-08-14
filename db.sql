-- Student Database Setup Script
-- Author: Prashasti Jain
-- Description: This script creates a sample database and a students table for demonstration purposes.
-- Date: 2025-08-15

-- Create the database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS studentdb;

-- Switch to the database
USE studentdb;

-- Drop the table if it exists to avoid duplication (for development/testing purposes)
DROP TABLE IF EXISTS students;

-- Create the students table
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,       -- Unique student ID
    name VARCHAR(50) NOT NULL,               -- Student's name
    age INT CHECK (age >= 5),                 -- Age with a basic validation rule
    grade VARCHAR(5)                         -- Grade (e.g., A+, B, etc.)
);

-- Optional: Insert some sample data for testing
INSERT INTO students (name, age, grade) VALUES
('John Doe', 15, 'A'),
('Jane Smith', 16, 'B+'),
('Alice Johnson', 14, 'A-');
