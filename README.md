# Actividad-1 Generación INICIAL de una base de datos
## 1. Descripción del proyecto

En esta actividad se solicitó desarrollar el código SQL necesario para crear una base de datos en MySQL destinada a la administración del inventario de una empresa. También se requirió establecer las relaciones entre las tablas y elaborar el modelo entidad-relación correspondiente.

La base de datos permite organizar la información del personal, los productos y los registros de inventario mediante tablas relacionadas.

## 2.Objetivo
Diseñar e implementar una base de datos relacional utilizando MySQL, mediante la creación de tablas, la definición de claves primarias y foráneas y el establecimiento de relaciones que permitan mantener la integridad de la información.

## 3.Tecnologías utilizadas
* MySQL
* MySQL Workbench
* SQL
* ChatGPT como herramienta de apoyo para el desarrollo del código

## 4.Estructura de la base de datos
La base de datos InventarioEmpresa está compuesta por tres tablas principales.

**CatPersonal:** Esta tabla almacena la información del personal de la empresa.

| Campo | Tipo de dato | Descripción |
|---|---|---|
| ID | INT AUTO_INCREMENT | Identificador único y clave primaria |
| Nombre | VARCHAR(80) | Nombre del empleado |
| Cargo | VARCHAR(80) | Puesto que desempeña |

**CatProducto:** Esta tabla contiene el catálogo de productos de la empresa.
| Campo | Tipo de dato | Descripción |
|---|---|---|
| ID | INT AUTO_INCREMENT | Identificador único y clave primaria |
| Descripcion | VARCHAR(40) | Descripción del producto |

**tblInventario:** Esta tabla registra las cantidades de los productos y establece la relación entre los productos y el personal.
| Campo | Tipo de dato | Descripción |
|---|---|---|
| ID | INT AUTO_INCREMENT | Identificador único y clave primaria |
| FechaAlta | TIMESTAMP | Fecha y hora de creación del registro |
| IDProducto | INT | Clave foránea de CatProducto |
| IDPersonal | INT | Clave foránea de CatPersonal |
| Cantidad | INT | Cantidad registrada del producto |

## 5.Relaciones entre las tablas
La base de datos utiliza claves foráneas para relacionar la información de las tres tablas.

* CatProducto → tblInventario: el campo IDProducto relaciona cada registro de inventario con un producto del catálogo.
* CatPersonal → tblInventario: el campo IDPersonal relaciona cada registro de inventario con un integrante del personal.
* Estas relaciones permiten mantener la integridad referencial y evitar que los registros de inventario hagan referencia a productos o empleados inexistentes.

  

