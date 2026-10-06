USE ventas_tech_db;

-- Consulta 1: Vista base del proyecto - INNER JOIN

SELECT
    ventas.fecha_venta,
    clientes.id_cliente,
    clientes.nombre AS nombre_cliente,
    clientes.ciudad,
    productos.nombre_producto,
    categorias.nombre_categoria,
    ventas.cantidad,
    ventas.precio_unitario,
    ventas.cantidad * ventas.precio_unitario AS total_venta
FROM ventas
INNER JOIN clientes
    ON ventas.id_cliente = clientes.id_cliente
INNER JOIN productos
    ON ventas.id_producto = productos.id_producto
INNER JOIN categorias
    ON productos.id_categoria = categorias.id_categoria;


-- Consulta 2: Clientes sin ventas - LEFT JOIN

SELECT
    clientes.nombre,
    clientes.email,
    clientes.fecha_registro
FROM clientes
LEFT JOIN ventas
    ON clientes.id_cliente = ventas.id_cliente
WHERE ventas.id_cliente IS NULL;


-- Consulta 3: Productos sin ventas - LEFT JOIN

SELECT
    productos.nombre_producto,
    categorias.nombre_categoria,
    productos.precio
FROM productos
LEFT JOIN ventas
    ON productos.id_producto = ventas.id_producto
INNER JOIN categorias
    ON productos.id_categoria = categorias.id_categoria
WHERE ventas.id_producto IS NULL;


-- Consulta 4: Consolidado por canal - UNION ALL

SELECT
    canal,
    SUM(total) AS total_canal
FROM (
    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Online' AS canal
    FROM ventas
    WHERE fecha_venta <= '2024-03-10'

    UNION ALL

    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Presencial' AS canal
    FROM ventas
    WHERE fecha_venta > '2024-03-10'
) AS consolidado
GROUP BY canal;
