--A.Consulta SQL para obtener el nombre del proyecto y sus productos correspondientes del proyecto "Premia" con código 1:
SELECT p.nombre AS nombre_proyecto,
    pp.producto
FROM proyecto p
    INNER JOIN producto_proyecto pp ON p.proyecto = pp.proyecto
WHERE p.proyecto = 'Premia'
    AND p.cod_proyecto = 1;
--B.Consulta SQL para obtener los distintos mensajes,
indicando a qué proyecto y producto pertenecen:
SELECT m.cod_mensaje,
    f.nombre AS formato_mensaje,
    p.nombre AS nombre_proyecto,
    pp.producto
FROM mensaje m
    INNER JOIN formato_mensaje f ON m.cod_formato = f.cod_formato
    INNER JOIN proyecto p ON m.proyecto = p.proyecto
    INNER JOIN producto_proyecto pp ON m.producto = pp.producto
ORDER BY m.cod_mensaje;
--C.Consulta SQL para obtener los distintos mensajes,
indicando a qué proyecto y producto pertenecen.Si el mensaje está en todos los productos de un proyecto,
se mostrará el nombre del proyecto y un solo producto llamado "TODOS":
SELECT m.cod_mensaje,
    f.nombre AS formato_mensaje,
    p.nombre AS nombre_proyecto,
    CASE
        WHEN COUNT(DISTINCT m.producto) = COUNT(DISTINCT pp.producto) THEN 'TODOS'
        ELSE pp.producto
    END AS producto
FROM mensaje m
    INNER JOIN formato_mensaje f ON m.cod_formato = f.cod_formato
    INNER JOIN proyecto p ON m.proyecto = p.proyecto
    INNER JOIN producto_proyecto pp ON m.producto = pp.producto
GROUP BY m.cod_mensaje,
    f.nombre,
    p.nombre;