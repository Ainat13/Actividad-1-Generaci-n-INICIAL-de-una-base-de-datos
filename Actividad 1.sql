-- 1. Crear la base de datos
CREATE DATABASE IF NOT EXISTS InventarioEmpresa;

-- Seleccionar la base de datos
USE InventarioEmpresa;


-- 2. Crear el catálogo de personal
CREATE TABLE CatPersonal (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(80) NOT NULL,
    Cargo VARCHAR(80) NOT NULL
) ENGINE = InnoDB;


-- 3. Crear el catálogo de productos
CREATE TABLE CatProducto (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(40) NOT NULL
) ENGINE = InnoDB;


-- 4. Crear la tabla de inventario
CREATE TABLE tblInventario (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FechaAlta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    IDProducto INT NOT NULL,
    IDPersonal INT NOT NULL,
    Cantidad INT NOT NULL DEFAULT 1,

    CONSTRAINT FK_Inventario_Producto
        FOREIGN KEY (IDProducto)
        REFERENCES CatProducto(ID),

    CONSTRAINT FK_Inventario_Personal
        FOREIGN KEY (IDPersonal)
        REFERENCES CatPersonal(ID),

    CONSTRAINT CHK_Inventario_Cantidad
        CHECK (Cantidad > 0)
) ENGINE = InnoDB;
