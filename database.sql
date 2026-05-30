-- =============================================
-- Script SQL pour créer la base de données
-- et les tables nécessaires au projet
-- Skin Cancer Detection avec VGG16
-- =============================================

-- Créer la base de données
CREATE DATABASE IF NOT EXISTS skin_cancer_db;
USE skin_cancer_db;

-- =============================================
-- Table des utilisateurs (authentification)
-- =============================================
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- =============================================
-- Table des patients (résultats des analyses)
-- =============================================
CREATE TABLE IF NOT EXISTS patients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    result VARCHAR(50) NOT NULL,
    probability FLOAT NOT NULL,
    image_path VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =============================================
-- Insérer un utilisateur par défaut pour le test
-- Username: admin | Password: admin
-- =============================================
INSERT INTO users (username, password) VALUES ('admin', 'admin');
