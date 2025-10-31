CREATE DATABASE MuebleriaBlanco;
USE MuebleriaBlanco;

CREATE TABLE empresa (
    idEmpresa INT AUTO_INCREMENT PRIMARY KEY,
    nombreEmpresa VARCHAR(50),
    direccionEmpresa VARCHAR(100),
    direccionFiscalEmpresa VARCHAR(100),
    RFCEmpresa VARCHAR(100)
);
