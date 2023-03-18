-- Windows functions

-- El promedio de la colegiatura por carrera
SELECT *, 
	   AVG(colegiatura) OVER(PARTITION BY carrera_id)
FROM platzi.alumnos;

-- ORDER BY -> toma en cuenta las filas que esta por encima de la tupla actual y las que son iguales segun el ecampo que se le indique
-- suma las coleguiatoras acomuladolas segun el valor que tenga cada fila, e inicia de nuevo por cada carrera
SELECT *, 
	   SUM(colegiatura) OVER(PARTITION BY carrera_id ORDER BY colegiatura)
FROM platzi.alumnos;

-- ranking de las colegiaturas de las mas caras a las menos cara
SELECT *, 
	   RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura  DESC) AS brand_rank
FROM platzi.alumnos
ORDER BY carrera_id, brand_rank;
/* window function corren al final de todo a excepcón ORDER BY por ende no se puede hacer un WHERE del campo brand_rank,
 Para ello se utiliza un subquery*/

SELECT *
FROM (
	SELECT *, 
	RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura  DESC) AS brand_rank
	FROM platzi.alumnos
) AS rank_colegiaturas_por_carrera
WHERE brand_rank < 3
ORDER BY carrera_id, brand_rank;
 

 

