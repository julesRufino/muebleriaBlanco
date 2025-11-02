CREATE DATABASE MuebleriaBlanco;
USE MuebleriaBlanco;

CREATE TABLE ubicacion (
    idUbicacion INT AUTO_INCREMENT PRIMARY KEY,
    calle VARCHAR(100),
    numero VARCHAR(10),
    colonia VARCHAR(100),
    ciudad VARCHAR(100),
    estado VARCHAR(100),
    codigoPostal VARCHAR(10),
    lat DECIMAL(10,7),
    lng DECIMAL(10,7)
);

CREATE TABLE empresa (
    idEmpresa INT AUTO_INCREMENT PRIMARY KEY,
    idUbicacion INT,
    nombreEmpresa VARCHAR(50),
    RFCEmpresa VARCHAR(13),
    FOREIGN KEY (idUbicacion) REFERENCES ubicacion(idUbicacion)
);

CREATE TABLE cargo (
    idCargo INT AUTO_INCREMENT PRIMARY KEY,
    puesto VARCHAR(100),
    salario DECIMAL(10,2)
);

CREATE TABLE empleado (
    idEmpleado INT AUTO_INCREMENT PRIMARY KEY,
    idCargo INT,
    idUbicacion INT,
    nombre VARCHAR(100),
    rfc VARCHAR(13),
    fechaIngreso DATE,
    fechaNacimiento DATE,
    FOREIGN KEY (idCargo) REFERENCES cargo(idCargo),
    FOREIGN KEY (idUbicacion) REFERENCES ubicacion(idUbicacion)
);

CREATE TABLE cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nombreCliente VARCHAR(100),
    telefono VARCHAR(15),
    correo VARCHAR(100),
    RFCliente VARCHAR(13),
    idUbicacion INT,
    FOREIGN KEY (idUbicacion) REFERENCES ubicacion(idUbicacion)
);
