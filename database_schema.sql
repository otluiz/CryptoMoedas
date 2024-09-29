-- database_schema.sql

-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS cryptoBD;

-- Seleciona o banco de dados criado
USE cryptoBD;

-- Criação da tabela de usuários
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Criação da tabela de ativos (lastro)
CREATE TABLE assets (
    asset_id INT AUTO_INCREMENT PRIMARY KEY,
    asset_name VARCHAR(50) NOT NULL,
    asset_type ENUM('Gold', 'Silver', 'Other') NOT NULL,
    amount DECIMAL(20, 4) NOT NULL,
    valuation DECIMAL(20, 4) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Criação da tabela de auditorias
CREATE TABLE audits (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    asset_id INT NOT NULL,
    audit_date DATE NOT NULL,
    audit_amount DECIMAL(20, 4) NOT NULL,
    auditor VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (asset_id) REFERENCES assets(asset_id)
);

-- Criação da tabela de carteiras (wallets)
CREATE TABLE wallets (
    wallet_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    balance DECIMAL(20, 4) DEFAULT 0.0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Criação da tabela de transações
CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    wallet_id INT NOT NULL,
    transaction_type ENUM('Deposit', 'Withdraw', 'Transfer') NOT NULL,
    amount DECIMAL(20, 4) NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    related_wallet_id INT,
    FOREIGN KEY (wallet_id) REFERENCES wallets(wallet_id),
    FOREIGN KEY (related_wallet_id) REFERENCES wallets(wallet_id)
);
