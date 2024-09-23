-- Crear base de datos
CREATE DATABASE tienda_gadgets;
GO

-- Usar la base de datos
USE tienda_gadgets;
GO

-- Cliente (Tabla sin FK)
CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(150) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    fecha_registro DATETIME DEFAULT GETDATE() NOT NULL,
    tipo_cliente VARCHAR(20) NOT NULL -- Ej: 'Regular', 'Premium'
);
GO

-- Categoría (Tabla sin FK)
CREATE TABLE categoria (
    id_categoria INT PRIMARY KEY IDENTITY(1,1),
    nombre_categoria VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255)
);
GO

-- Marca (Tabla sin FK)
CREATE TABLE marca (
    id_marca INT PRIMARY KEY IDENTITY(1,1),
    nombre_marca VARCHAR(100) NOT NULL,
    pais_origen VARCHAR(100) NOT NULL
);
GO

-- Producto (Con FK a marca y categoria)
CREATE TABLE producto (
    id_producto INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(250),
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    fecha_lanzamiento DATETIME DEFAULT GETDATE() NOT NULL,
    marca_id INT NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (marca_id) REFERENCES marca(id_marca),
    FOREIGN KEY (categoria_id) REFERENCES categoria(id_categoria)
);
GO

-- Método de Pago (Tabla sin FK)
CREATE TABLE metodo_pago (
    id_metodo_pago INT PRIMARY KEY IDENTITY(1,1),
    tipo VARCHAR(50) NOT NULL, -- Ej: 'Tarjeta de crédito', 'PayPal'
    descripcion VARCHAR(250)
);
GO

-- Pedido (Con FK a cliente y metodo_pago)
CREATE TABLE pedido (
    id_pedido INT PRIMARY KEY IDENTITY(1,1),
    fecha DATETIME DEFAULT GETDATE() NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    estado_pedido VARCHAR(20) NOT NULL, -- Ej: 'Pendiente', 'Enviado', etc.
    id_cliente INT NOT NULL,
    id_metodo_pago INT NOT NULL,
    direccion_envio VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_metodo_pago) REFERENCES metodo_pago(id_metodo_pago)
);
GO

-- Detalle Pedido (Con FK a pedido y producto)
CREATE TABLE detalle_pedido (
    id_detalle INT PRIMARY KEY IDENTITY(1,1),
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);
GO

-- Almacén (Tabla sin FK)
CREATE TABLE almacen (
    id_almacen INT PRIMARY KEY IDENTITY(1,1),
    nombre_almacen VARCHAR(100) NOT NULL,
    ubicacion VARCHAR(255) NOT NULL,
    capacidad INT NOT NULL
);
GO

-- Inventario (Con FK a producto y almacen)
CREATE TABLE inventario (
    id_inventario INT PRIMARY KEY IDENTITY(1,1),
    cantidad_disponible INT NOT NULL,
    id_producto INT NOT NULL,
    id_almacen INT NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    FOREIGN KEY (id_almacen) REFERENCES almacen(id_almacen)
);
GO

-- Reseña (Con FK a producto y cliente)
CREATE TABLE resena (
    id_resena INT PRIMARY KEY IDENTITY(1,1),
    calificacion INT NOT NULL, -- Valor entre 1 y 5
    comentario TEXT,
    fecha_resena DATETIME DEFAULT GETDATE() NOT NULL,
    id_producto INT NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);
GO

-- Promoción (Con FK a producto)
CREATE TABLE promocion (
    id_promocion INT PRIMARY KEY IDENTITY(1,1),
    nombre_promocion VARCHAR(100) NOT NULL,
    descuento DECIMAL(5,2) NOT NULL, -- Porcentaje, Ej: 10.50%
    fecha_inicio DATETIME NOT NULL,
    fecha_fin DATETIME NOT NULL,
    id_producto INT NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);
GO

-- Proveedor (Tabla sin FK)
CREATE TABLE proveedor (
    id_proveedor INT PRIMARY KEY IDENTITY(1,1),
    nombre_proveedor VARCHAR(100) NOT NULL,
    contacto VARCHAR(150),
    pais VARCHAR(100) NOT NULL
);
GO

