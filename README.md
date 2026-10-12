
# Ventas Tech DB — Proyecto RetailPro

## Descripción del proyecto

Proyecto de análisis de datos desarrollado para RetailPro, una empresa distribuidora de tecnología.

El proyecto permite organizar y analizar información de ventas, clientes, productos y categorías para obtener indicadores que ayuden a tomar decisiones comerciales.

## Objetivo

Diseñar una base de datos relacional y utilizar herramientas de análisis de datos para estudiar la facturación, los productos vendidos y el comportamiento de los clientes.

## Tecnologías utilizadas

- SQL Server: creación de la base de datos y consultas SQL.
- SQL Server Management Studio (SSMS): ejecución de scripts.
- Power Query: limpieza y transformación de datos.
- Power BI: modelado de datos y análisis.
- DAX: creación de medidas e indicadores.
- GitHub: almacenamiento y documentación del proyecto.

## Tablas principales

La base de datos `ventas_tech_db` contiene cuatro tablas:

- **clientes:** información de los clientes.
- **productos:** catálogo de productos, precios y stock.
- **categorias:** clasificación de los productos.
- **ventas:** operaciones de venta, cantidades, precios y fechas.

Las tablas se relacionan mediante claves primarias y foráneas.

## Archivos del proyecto

- `ventas_tech_db.sql`: creación de la base de datos, tablas y carga de datos.
- `m4_consultas_negocio.sql`: consultas para analizar facturación mensual, pedidos, productos y clientes recurrentes.
- `m5_consultas_joins.sql`: consultas con INNER JOIN y LEFT JOIN para relacionar tablas.
- `GarciaDaRosa_Florencia_Checkpoint2.pbix`: modelo de datos y medidas DAX desarrolladas en Power BI.

## Cómo ejecutar los scripts SQL

1. Abrir SQL Server Management Studio.
2. Conectarse al servidor de SQL Server.
3. Abrir y ejecutar `ventas_tech_db.sql` para crear la base de datos y cargar los datos.
4. Seleccionar la base de datos `ventas_tech_db`.
5. Ejecutar `m4_consultas_negocio.sql` para obtener los indicadores comerciales.
6. Ejecutar `m5_consultas_joins.sql` para analizar información relacionada entre tablas.

Los scripts están preparados para SQL Server y utilizan instrucciones como USE, MONTH(), TOP y dbo.

## Consultas e indicadores

El proyecto permite analizar:

- Total facturado por mes.
- Cantidad de pedidos.
- Ticket promedio.
- Productos con mayor facturación.
- Clientes recurrentes.
- Clientes sin compras y productos sin movimientos.

En Power BI también se desarrollaron medidas DAX para analizar ventas totales, ventas online, ventas acumuladas y comparaciones anuales.

## Validación de resultados

Los resultados obtenidos mediante SQL y Power BI deben verificarse antes de utilizarlos para tomar decisiones.

La inteligencia artificial se utilizó como herramienta de apoyo para revisar consultas, generar propuestas de análisis y mejorar la documentación.

Las sugerencias de IA fueron evaluadas críticamente, considerando la exactitud de los cálculos y las limitaciones de los datos.

## Conclusión

El proyecto integra SQL, Power Query, Power BI y DAX para transformar datos comerciales en información útil para el negocio.

La documentación permite que otros analistas comprendan la estructura del proyecto y puedan continuar desarrollándolo.
