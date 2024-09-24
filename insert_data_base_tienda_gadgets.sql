-- Usar la base de datos
USE tienda_gadgets;
GO

-- datos métodos de pago

INSERT INTO metodo_pago (tipo, descripcion) 
VALUES
	('Tarjeta de crédito', 'Pago mediante tarjeta de crédito (Visa, Mastercard)'),
	('Tarjeta de débito', 'Pago mediante tarjeta de débito'),
	('Yape', 'Aplicación de pagos móviles vinculada a BCP'),
	('Plin', 'Plataforma de pagos móviles entre bancos peruanos'),
	('Transferencia bancaria', 'Pago mediante transferencia de una cuenta bancaria local'),
	('PagoEfectivo', 'Sistema de pago a través de códigos y agentes bancarios'),
	('Mercado Pago', 'Plataforma de pagos en línea'),
	('Billetera móvil', 'Aplicaciones móviles de pago (Tunki, BIM)'),
	('PayPal', 'Plataforma de pagos internacionales en línea'),
	('Pago Contra Entrega', 'Pago al recibir el producto');

SELECT*FROM metodo_pago;

-- datos métodos de pago

INSERT INTO almacen (nombre_almacen, ubicacion, capacidad) 
VALUES
	('Almacén Central Lima', 'Lima Centro, Av. Abancay 1234', 1500),
	('Almacén Cercado de Lima', 'Lima Centro, Jr. de la Unión 5678', 1200),
	('Almacén Comas', 'Lima Norte, Av. Túpac Amaru 345', 1000),
	('Almacén Los Olivos', 'Lima Norte, Av. Alfredo Mendiola 234', 900),
	('Almacén Chorrillos', 'Lima Sur, Av. Huaylas 789', 800),
	('Almacén Villa El Salvador', 'Lima Sur, Av. El Sol 654', 850),
	('Almacén San Isidro', 'Lima Oeste, Av. Javier Prado Oeste 345', 1300),
	('Almacén Miraflores', 'Lima Oeste, Av. Pardo 876', 1250),
	('Almacén Ate', 'Lima Este, Av. Nicolás Ayllón 2345', 1100),
	('Almacén San Juan de Lurigancho', 'Lima Este, Av. Próceres de la Independencia 567', 1150);

SELECT*FROM almacen

-- se insertó un datos con archivos txt en las tablas Marca y Proveedores
SELECT*FROM marca;

SELECT*FROM proveedor;

-- Insertar data en Categorías

INSERT INTO categoria (nombre_categoria, descripcion) 
VALUES
	('Smartphones', 'Teléfonos inteligentes con capacidad de conexión a internet'),
	('Tablets', 'Dispositivos electrónicos portátiles'),
	('Laptops', 'Ordenadores portátiles'),
	('Smartwatches', 'Relojes inteligentes con funcionalidades avanzadas'),
	('Auriculares', 'Dispositivos de audio para el oído'),
	('Cámaras', 'Cámaras digitales para fotografía y video'),
	('Televisores', 'Pantallas para la visualización de contenidos multimedia'),
	('Monitores', 'Pantallas para computadoras'),
	('Consolas de videojuegos', 'Dispositivos para jugar videojuegos'),
	('Accesorios de tecnología', 'Fundas, cargadores, cables, etc.'),
	('Drones', 'Dispositivos aéreos no tripulados'),
	('Smart Home Devices', 'Dispositivos conectados para el hogar'),
	('Almacenamiento externo', 'Discos duros y memorias externas'),
	('Equipos de sonido', 'Sistemas de audio'),
	('Impresoras', 'Dispositivos para impresión de documentos'),
	('Escáneres', 'Dispositivos para digitalizar documentos'),
	('Teclados', 'Periféricos para ingreso de datos'),
	('Mouse', 'Dispositivos de control para computadoras'),
	('Proyectores', 'Dispositivos de proyección de imágenes'),
	('Routers', 'Dispositivos para conexiones de red'),
	('Switches', 'Dispositivos para la gestión de redes'),
	('Cámaras de seguridad', 'Cámaras para vigilancia'),
	('Parlantes portátiles', 'Altavoces de tamaño compacto'),
	('Placas base', 'Componente principal en una computadora'),
	('Memorias RAM', 'Memorias para almacenamiento temporal en PCs'),
	('Procesadores', 'Unidades de procesamiento de computadoras'),
	('Tarjetas gráficas', 'Unidades de procesamiento gráfico'),
	('Unidades de almacenamiento', 'Discos duros, SSD, etc.'),
	('Sistemas operativos', 'Software para la gestión de hardware y aplicaciones'),
	('Realidad virtual', 'Dispositivos y accesorios para realidad virtual'),
	('Realidad aumentada', 'Dispositivos de realidad aumentada'),
	('Robótica', 'Equipos de robótica para consumidores'),
	('Gaming', 'Accesorios para jugadores'),
	('Audio profesional', 'Equipos de sonido para uso profesional');

SELECT*FROM categoria;

-- Insertar data en Producto

INSERT INTO producto (nombre, descripcion, precio, stock, fecha_lanzamiento, marca_id, categoria_id) 
VALUES
	('iPhone 14 Pro', 'Teléfono inteligente de última generación', 1099.99, 50, '2023-08-15', 1, 1),
	('Samsung Galaxy S22', 'Smartphone con cámara de alta calidad', 999.99, 40, '2023-07-20', 2, 1),
	('MacBook Pro 14"', 'Ordenador portátil para profesionales', 1999.99, 30, '2023-06-01', 1, 3),
	('Dell XPS 13', 'Laptop ligera y potente', 1299.99, 25, '2023-05-10', 3, 3),
	('Apple Watch Series 7', 'Reloj inteligente con sensor de salud', 499.99, 60, '2023-04-25', 1, 4),
	('Xiaomi Mi Watch', 'Reloj inteligente económico', 199.99, 80, '2023-06-11', 4, 4),
	('Sony WH-1000XM4', 'Auriculares con cancelación de ruido', 349.99, 120, '2023-07-03', 5, 5),
	('Bose QuietComfort 35 II', 'Auriculares inalámbricos con gran calidad de sonido', 299.99, 90, '2023-05-15', 6, 5),
	('Canon EOS R5', 'Cámara profesional sin espejo', 3899.99, 10, '2023-03-22', 7, 6),
	('Sony A7 III', 'Cámara full-frame versátil', 2499.99, 15, '2023-04-05', 5, 6),
	('LG OLED55CX', 'Televisor OLED 4K de 55 pulgadas', 1499.99, 20, '2023-06-08', 8, 7),
	('Samsung QLED 65Q90T', 'Televisor QLED 4K de 65 pulgadas', 1999.99, 25, '2023-05-12', 2, 7),
	('Dell UltraSharp 27"', 'Monitor 4K con colores precisos', 799.99, 30, '2023-07-01', 3, 8),
	('HP Omen 25"', 'Monitor gaming con alta frecuencia de refresco', 349.99, 40, '2023-05-25', 9, 8),
	('PlayStation 5', 'Consola de videojuegos de última generación', 499.99, 60, '2023-04-19', 10, 9),
	('Xbox Series X', 'Consola de videojuegos 4K', 499.99, 55, '2023-03-15', 11, 9),
	('Fundas para iPhone', 'Fundas de silicona para protección de iPhone', 19.99, 500, '2023-06-30', 1, 10),
	('Cargadores rápidos USB-C', 'Cargadores rápidos compatibles con varios dispositivos', 29.99, 300, '2023-05-09', 12, 10),
	('DJI Mavic Air 2', 'Dron con cámara 4K y estabilizador', 999.99, 20, '2023-06-19', 13, 11),
	('Parrot Anafi', 'Dron compacto con cámara HD', 699.99, 25, '2023-07-22', 14, 11),
	('Google Nest Mini', 'Altavoz inteligente con asistente de voz', 49.99, 200, '2023-05-05', 15, 12),
	('Amazon Echo Dot', 'Altavoz inteligente con Alexa', 39.99, 180, '2023-06-01', 16, 12),
	('Western Digital My Passport', 'Disco duro externo de 1TB', 59.99, 150, '2023-04-29', 17, 13),
	('Seagate Backup Plus', 'Disco duro externo de 2TB', 79.99, 120, '2023-03-18', 18, 13),
	('Bose SoundLink Revolve', 'Altavoz portátil con sonido 360', 199.99, 70, '2023-05-11', 6, 23),
	('Sonos Move', 'Altavoz portátil con sonido de alta calidad', 399.99, 50, '2023-07-14', 19, 23),
	('Logitech MX Master 3', 'Mouse ergonómico con múltiples botones', 99.99, 120, '2023-06-03', 20, 18),
	('Razer DeathAdder V2', 'Mouse gaming con sensor óptico avanzado', 69.99, 100, '2023-04-21', 21, 18),
	('Asus ROG Strix Scope', 'Teclado mecánico gaming RGB', 129.99, 70, '2023-07-07', 22, 17),
	('Corsair K95 RGB Platinum', 'Teclado gaming con retroiluminación', 179.99, 60, '2023-05-28', 23, 17),
	('Epson EcoTank L3150', 'Impresora con sistema de tinta continua', 299.99, 30, '2023-06-22', 24, 15),
	('HP DeskJet 2720', 'Impresora multifuncional', 89.99, 50, '2023-04-17', 25, 15),
	('Brother DS-640', 'Escáner portátil', 129.99, 40, '2023-05-30', 26, 16),
	('Fujitsu ScanSnap iX1500', 'Escáner profesional de alta velocidad', 499.99, 20, '2023-06-18', 27, 16),
	('MSI GeForce RTX 3080', 'Tarjeta gráfica de alto rendimiento', 799.99, 15, '2023-03-08', 28, 27),
	('NVIDIA GeForce RTX 3090', 'Tarjeta gráfica de gama alta', 1499.99, 10, '2023-05-19', 29, 27),
	('Intel Core i9-11900K', 'Procesador de última generación para gaming y creación de contenido', 599.99, 50, '2023-04-04', 30, 26),
	('AMD Ryzen 9 5900X', 'Procesador de alto rendimiento', 499.99, 60, '2023-06-10', 31, 26),
	('Kingston HyperX Fury 16GB', 'Memoria RAM DDR4 para gaming', 99.99, 150, '2023-04-09', 32, 25),
	('Corsair Vengeance LPX 32GB', 'Memoria RAM DDR4 para alto rendimiento', 199.99, 80, '2023-03-28', 33, 25),
	('Asus ROG Maximus XIII', 'Placa base de alto rendimiento para gaming', 399.99, 20, '2023-07-05', 34, 24),
	('Gigabyte Aorus X570', 'Placa base para procesadores AMD', 349.99, 30, '2023-05-23', 35, 24),
	('WD Blue 1TB SSD', 'Unidad de almacenamiento SSD para mayor velocidad', 99.99, 120, '2023-06-15', 36, 28),
	('Samsung 980 Pro 2TB', 'SSD de alto rendimiento con tecnología PCIe 4.0', 299.99, 90, '2023-05-02', 37, 28),
	('Oculus Quest 2', 'Dispositivo de realidad virtual inalámbrico', 399.99, 50, '2023-04-26', 38, 30),
	('HTC Vive Pro 2', 'Dispositivo de realidad virtual de alta calidad', 799.99, 20, '2023-06-09', 39, 30),
	('Microsoft HoloLens 2', 'Dispositivo de realidad aumentada para profesionales', 3499.99, 5, '2023-07-21', 40, 31),
	('Magic Leap 1', 'Dispositivo de realidad aumentada con visión avanzada', 2299.99, 10, '2023-03-14', 41, 31),
	('Arduino Starter Kit', 'Kit de inicio para proyectos de robótica y programación', 99.99, 200, '2023-06-25', 42, 32),
	('LEGO Mindstorms Robot Inventor', 'Kit de robótica para construcción de robots', 349.99, 50, '2023-07-10', 43, 32),
	('Razer BlackShark V2', 'Auriculares gaming con micrófono', 99.99, 150, '2023-05-29', 21, 5),
	('HyperX Cloud II', 'Auriculares gaming con sonido envolvente', 79.99, 120, '2023-04-16', 32, 5),
	('Fitbit Charge 5', 'Pulsera de actividad con GPS', 149.99, 100, '2023-06-02', 16, 4),
	('Garmin Venu 2', 'Reloj inteligente con seguimiento deportivo', 349.99, 80, '2023-03-25', 17, 4),
	('Raspberry Pi 4 Model B', 'Placa de computadora compacta para proyectos', 69.99, 250, '2023-05-06', 42, 33),
	('BeagleBone Black', 'Placa de desarrollo para proyectos electrónicos', 59.99, 200, '2023-07-12', 41, 33),
	('DJI Osmo Pocket', 'Cámara portátil con estabilizador', 349.99, 40, '2023-05-08', 13, 6),
	('GoPro HERO10', 'Cámara de acción resistente al agua', 499.99, 50, '2023-06-14', 44, 6),
	('SteelSeries Arctis Pro', 'Auriculares gaming de alta calidad', 179.99, 90, '2023-05-13', 45, 5),
	('Turtle Beach Stealth 700 Gen 2', 'Auriculares inalámbricos con sonido envolvente', 149.99, 100, '2023-06-20', 46, 5),
	('Sony ZV-1', 'Cámara compacta para vlogging', 799.99, 30, '2023-03-31', 5, 6),
	('Nikon Z6 II', 'Cámara sin espejo full-frame', 1999.99, 20, '2023-07-26', 47, 6),
	('ASUS TUF Gaming A15', 'Portátil gaming con gráfica dedicada', 1199.99, 50, '2023-06-17', 48, 3),
	('Lenovo Legion 5', 'Portátil gaming con pantalla de alta tasa de refresco', 1399.99, 40, '2023-04-13', 49, 3);


SELECT*FROM producto;

-- Insertar data en Cliente

INSERT INTO cliente (nombre, correo_electronico, direccion, fecha_registro, tipo_cliente) 
VALUES
	('Carlos Pérez', 'c.perez@gmail.com', 'Av. Siempre Viva 123', '2023-05-10', 'Regular'),
	('María López', 'm.lopez@yahoo.com', 'Calle del Sol 456', '2023-03-12', 'Premium'),
	('Juan García', 'juan.garcia@outlook.com', 'Av. Las Flores 789', '2024-01-05', 'Regular'),
	('Ana Fernández', 'ana.fernandez@hotmail.com', 'Calle de los Rosales 321', '2023-04-20', 'Premium'),
	('Pedro Martínez', 'p.martinez@gmail.com', 'Paseo del Parque 654', '2023-07-18', 'Regular'),
	('Sofía Gómez', 'sofia.gomez@outlook.com', 'Av. Central 987', '2023-09-10', 'Premium'),
	('Luis Rodríguez', 'l.rodriguez@gmail.com', 'Calle de la Paz 543', '2023-10-15', 'Regular'),
	('Lucía Sánchez', 'lucia.sanchez@yahoo.com', 'Calle del Río 678', '2024-03-22', 'Premium'),
	('Roberto Díaz', 'roberto.diaz@hotmail.com', 'Plaza Mayor 123', '2024-02-28', 'Regular'),
	('Marta Torres', 'marta.torres@gmail.com', 'Calle del Lago 987', '2023-12-25', 'Premium'),
	('Fernando Ruiz', 'fernando.ruiz@outlook.com', 'Av. del Mar 456', '2023-08-14', 'Regular'),
	('Clara Morales', 'clara.morales@yahoo.com', 'Paseo del Bosque 321', '2024-06-05', 'Premium'),
	('David Herrera', 'd.herrera@gmail.com', 'Calle de la Luna 654', '2024-04-30', 'Regular'),
	('Julia Castillo', 'julia.castillo@hotmail.com', 'Av. Principal 789', '2023-11-18', 'Premium'),
	('Adrián Vega', 'adrian.vega@gmail.com', 'Calle Real 543', '2023-09-12', 'Regular'),
	('Isabel Jiménez', 'isabel.jimenez@outlook.com', 'Calle del Monte 987', '2024-07-01', 'Premium'),
	('Álvaro Navarro', 'alvaro.navarro@gmail.com', 'Paseo de la Sierra 123', '2024-01-15', 'Regular'),
	('Elena Cruz', 'elena.cruz@yahoo.com', 'Av. de los Pinos 456', '2023-03-18', 'Premium'),
	('Gonzalo Reyes', 'g.reyes@hotmail.com', 'Calle de las Palmeras 789', '2024-05-12', 'Regular'),
	('Silvia Ramos', 'silvia.ramos@gmail.com', 'Calle Nueva 321', '2023-06-22', 'Premium'),
	('Daniel Ortiz', 'daniel.ortiz@outlook.com', 'Paseo de la Libertad 654', '2023-05-10', 'Regular'),
	('Patricia Mendez', 'p.mendez@gmail.com', 'Calle del Prado 987', '2023-08-30', 'Premium'),
	('Mario Castro', 'mario.castro@hotmail.com', 'Av. de la Fuente 123', '2024-02-24', 'Regular'),
	('Beatriz Molina', 'b.molina@gmail.com', 'Paseo de los Arces 456', '2023-11-11', 'Premium'),
	('Raúl Aguilar', 'raul.aguilar@yahoo.com', 'Calle del Sol 321', '2024-03-20', 'Regular'),
	('Cristina Vargas', 'cristina.vargas@hotmail.com', 'Av. del Norte 654', '2024-06-17', 'Premium'),
	('Sergio Romero', 'sergio.romero@gmail.com', 'Paseo de los Cedros 789', '2023-04-15', 'Regular'),
	('Irene Ortiz', 'irene.ortiz@yahoo.com', 'Calle de las Rosas 543', '2023-10-10', 'Premium'),
	('Hugo Méndez', 'h.mendez@gmail.com', 'Av. del Jardín 987', '2024-01-01', 'Regular'),
	('Paula Navarro', 'paula.navarro@hotmail.com', 'Calle del Parque 123', '2023-07-05', 'Premium'),
	('Carlos Blanco', 'c.blanco@gmail.com', 'Paseo de las Lomas 456', '2023-06-12', 'Regular'),
	('Gabriela Delgado', 'gabriela.delgado@outlook.com', 'Calle de los Pinos 789', '2023-12-01', 'Premium'),
	('Javier Muñoz', 'javier.munoz@gmail.com', 'Calle del Cielo 321', '2024-02-09', 'Regular'),
	('Verónica Núñez', 'veronica.nunez@yahoo.com', 'Av. de la Luna 654', '2023-03-29', 'Premium'),
	('Esteban Moreno', 'esteban.moreno@hotmail.com', 'Paseo del Prado 987', '2024-01-22', 'Regular'),
	('Alicia Rivera', 'alicia.rivera@gmail.com', 'Calle del Mar 123', '2024-05-15', 'Premium'),
	('Iván Gil', 'ivan.gil@gmail.com', 'Av. de las Estrellas 456', '2023-11-21', 'Regular'),
	('Mónica Fuentes', 'monica.fuentes@outlook.com', 'Paseo del Sol 789', '2024-07-03', 'Premium'),
	('Pablo Vargas', 'p.vargas@hotmail.com', 'Calle del Roble 321', '2024-04-12', 'Regular'),
	('Andrea Espinoza', 'andrea.espinoza@gmail.com', 'Av. del Lago 654', '2023-05-02', 'Premium'),
	('Guillermo Soto', 'g.soto@yahoo.com', 'Paseo del Bosque 987', '2023-07-27', 'Regular'),
	('Lorena Peña', 'lorena.pena@gmail.com', 'Calle del Río 123', '2024-06-10', 'Premium'),
	('Vicente Castro', 'vicente.castro@outlook.com', 'Av. Principal 456', '2023-08-03', 'Regular'),
	('Claudia Herrera', 'claudia.herrera@gmail.com', 'Calle del Viento 789', '2024-01-25', 'Premium'),
	('Antonio Flores', 'antonio.flores@hotmail.com', 'Paseo de las Aguas 321', '2023-04-04', 'Regular'),
	('Laura González', 'laura.gonzalez@gmail.com', 'Av. del Centro 654', '2023-12-19', 'Premium'),
	('Eduardo Romero', 'eduardo.romero@gmail.com', 'Calle del Sol 987', '2023-11-05', 'Regular'),
	('Carmen Torres', 'carmen.torres@outlook.com', 'Paseo del Norte 123', '2023-09-30', 'Premium'),
	('Alberto Ortiz', 'alberto.ortiz@gmail.com', 'Calle del Prado 456', '2024-06-26', 'Regular'),
	('Sara Medina', 'sara.medina@yahoo.com', 'Av. de los Cedros 789', '2024-02-08', 'Premium'),
	('José Márquez', 'jose.marquez@hotmail.com', 'Calle de los Robles 321', '2023-03-30', 'Regular'),
	('Natalia Jiménez', 'natalia.jimenez@gmail.com', 'Paseo del Lago 654', '2024-05-21', 'Premium'); 

DELETE FROM cliente;


SELECT*FROM cliente;

-- Insertar data en Pedido

INSERT INTO pedido (fecha, total, estado_pedido, id_cliente, id_metodo_pago, direccion_envio) 
VALUES
	('2024-01-15', 199.99, 'Pendiente', 43, 6, 'Av. Siempre Viva 123'),
	('2023-11-08', 349.50, 'Enviado', 18, 3, 'Calle del Sol 456'),
	('2024-03-22', 89.90, 'Entregado', 56, 7, 'Av. Las Flores 789'),
	('2023-10-10', 459.00, 'Pendiente', 12, 5, 'Calle de los Rosales 321'),
	('2023-12-05', 299.95, 'Cancelado', 92, 2, 'Paseo del Parque 654'),
	('2024-04-12', 129.99, 'Enviado', 34, 9, 'Av. Central 987'),
	('2023-09-17', 199.50, 'Entregado', 75, 1, 'Calle de la Paz 543'),
	('2024-05-29', 249.99, 'Pendiente', 27, 10, 'Calle del Río 678'),
	('2024-02-11', 179.00, 'Enviado', 21, 4, 'Plaza Mayor 123'),
	('2024-06-04', 389.99, 'Entregado', 63, 8, 'Calle del Lago 987'),
	('2023-12-20', 79.90, 'Pendiente', 49, 3, 'Av. del Mar 456'),
	('2024-03-03', 399.50, 'Enviado', 87, 2, 'Paseo del Bosque 321'),
	('2023-10-18', 259.99, 'Entregado', 50, 6, 'Calle de la Luna 654'),
	('2024-01-25', 499.00, 'Pendiente', 95, 1, 'Av. Principal 789'),
	('2024-05-10', 99.99, 'Enviado', 104, 7, 'Calle Real 543'),
	('2024-06-15', 189.99, 'Entregado', 76, 5, 'Calle del Monte 987'),
	('2023-09-12', 349.50, 'Pendiente', 22, 8, 'Paseo de la Sierra 123'),
	('2024-03-30', 259.95, 'Enviado', 66, 4, 'Av. de los Pinos 456'),
	('2024-07-14', 399.99, 'Entregado', 39, 9, 'Calle de las Palmeras 789'),
	('2023-11-21', 99.90, 'Pendiente', 18, 2, 'Calle Nueva 321'),
	('2024-02-28', 459.50, 'Enviado', 40, 3, 'Paseo de la Libertad 654'),
	('2024-01-01', 199.99, 'Entregado', 84, 6, 'Calle del Prado 987'),
	('2023-10-09', 349.00, 'Pendiente', 29, 1, 'Av. de la Fuente 123'),
	('2024-06-20', 89.99, 'Enviado', 77, 7, 'Paseo de los Arces 456'),
	('2024-05-15', 129.95, 'Entregado', 97, 5, 'Calle del Sol 321'),
	('2024-01-08', 179.90, 'Pendiente', 32, 2, 'Av. del Norte 654'),
	('2023-12-15', 399.50, 'Enviado', 82, 8, 'Paseo de los Cedros 789'),
	('2023-11-30', 249.99, 'Entregado', 53, 4, 'Calle de las Rosas 543'),
	('2024-02-14', 89.95, 'Pendiente', 14, 1, 'Av. del Jardín 987'),
	('2023-10-02', 499.00, 'Enviado', 11, 10, 'Calle del Parque 123'),
	('2024-03-18', 129.99, 'Entregado', 73, 6, 'Paseo de las Lomas 456'),
	('2023-11-09', 259.99, 'Pendiente', 30, 3, 'Calle de los Pinos 789'),
	('2024-06-13', 199.00, 'Enviado', 20, 9, 'Calle del Cielo 321'),
	('2024-07-09', 299.50, 'Entregado', 83, 2, 'Av. de la Luna 654'),
	('2023-10-27', 99.90, 'Pendiente', 41, 5, 'Paseo del Prado 987'),
	('2023-12-02', 189.95, 'Enviado', 44, 1, 'Calle del Mar 123'),
	('2023-11-25', 459.99, 'Entregado', 15, 4, 'Av. de las Estrellas 456'),
	('2024-05-22', 179.50, 'Pendiente', 55, 7, 'Paseo del Sol 789'),
	('2024-04-05', 259.90, 'Enviado', 62, 10, 'Calle del Roble 321'),
	('2023-10-19', 399.95, 'Entregado', 79, 3, 'Av. del Lago 654'),
	('2023-11-10', 99.99, 'Pendiente', 70, 6, 'Paseo del Bosque 987'),
	('2024-02-20', 459.50, 'Enviado', 64, 2, 'Calle del Río 123'),
	('2024-06-07', 129.90, 'Entregado', 37, 5, 'Av. Principal 456'),
	('2023-09-28', 179.99, 'Pendiente', 10, 8, 'Calle del Viento 789'),
	('2023-11-15', 399.50, 'Enviado', 33, 1, 'Paseo de las Aguas 321'),
	('2023-10-12', 199.00, 'Entregado', 88, 9, 'Av. del Centro 654'),
	('2024-05-30', 89.95, 'Pendiente', 45, 3, 'Calle del Sol 987'),
	('2024-01-19', 499.90, 'Enviado', 78, 7, 'Paseo del Norte 123'),
	('2023-12-25', 179.95, 'Entregado', 24, 10, 'Calle del Prado 456'),
	('2024-02-01', 299.90, 'Pendiente', 25, 1, 'Av. de los Cedros 789');

SELECT*FROM pedido;