-- Crear la tabla clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(100)
);

-- Crear la tabla bolsillo
CREATE TABLE bolsillo (
    id_bolsillo INT PRIMARY KEY,
    id_cliente INT,
    saldo DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Crear la tabla venta
CREATE TABLE venta (
    id_venta INT PRIMARY KEY,
    id_cliente INT,
    costo DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
