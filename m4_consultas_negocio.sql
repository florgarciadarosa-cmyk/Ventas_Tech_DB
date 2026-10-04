USE ventas_tech_db;

SELECT
    MONTH(fecha_venta) AS mes,
    SUM(cantidad * precio_unitario) AS total_facturado,
    COUNT(*) AS cantidad_pedidos,
    AVG(cantidad * precio_unitario) AS ticket_promedio
FROM dbo.ventas
GROUP BY MONTH(fecha_venta)
ORDER BY mes;

SELECT TOP 5
    id_producto,
    SUM(cantidad) AS unidades_vendidas,
    SUM(cantidad * precio_unitario) AS total_facturado
FROM dbo.ventas
GROUP BY id_producto
ORDER BY total_facturado DESC;

SELECT
    id_cliente,
    COUNT(*) AS cantidad_pedidos,
    SUM(cantidad * precio_unitario) AS total_gastado
FROM dbo.ventas
GROUP BY id_cliente
HAVING COUNT(*) > 1
ORDER BY cantidad_pedidos DESC;


WITH resumen_mensual AS (
    SELECT
        MONTH(fecha_venta) AS mes,
        SUM(cantidad * precio_unitario) AS total_facturado
    FROM dbo.ventas
    GROUP BY MONTH(fecha_venta)
)
SELECT
    mes,
    total_facturado,
    CASE
        WHEN total_facturado > (SELECT AVG(total_facturado) FROM resumen_mensual)
            THEN 'Por encima'
        ELSE 'Por debajo'
    END AS comparacion_promedio
FROM resumen_mensual
ORDER BY mes;


-- HALLAZGOS

-- 1. En marzo se facturaron $6.444 en un total de 10 pedidos,
--    con un ticket promedio de $644,40.

-- 2. El producto 1 fue el que generó mayor facturación,
--    con un total de $3.600.

-- 3. Los 5 clientes realizaron más de un pedido,
--    por lo que todos pueden considerarse clientes recurrentes.
