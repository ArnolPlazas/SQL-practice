-- agregar un row_id consecutivo por cada fila de la tabla completa
SELECT ROW_NUMBER() OVER() AS row_id, *
FROM platzi.alumnos;


-- agregar un row_id consecutivo por cada fila de la tabla completa segun la fecha de incorporación
SELECT ROW_NUMBER() OVER(ORDER BY fecha_incorporacion) AS row_id, *
FROM platzi.alumnos;

-- agregar el primer valor de colegiatura por cada fila de la tabla completa
SELECT FIRST_VALUE(colegiatura) OVER() AS primera_colegiatura, *
FROM platzi.alumnos;

-- agregar el primer valor de colegiatura por cada fila teniedo en cuenta la carrera
SELECT FIRST_VALUE(colegiatura) OVER(PARTITION BY carrera_id) AS primera_colegiatura, *
FROM platzi.alumnos;

-- agregar la ultima valor de colegiatura por cada fila teniedo en cuenta la carrera
SELECT LAST_VALUE(colegiatura) OVER(PARTITION BY carrera_id) AS primera_colegiatura, *
FROM platzi.alumnos;

-- agregar el n valor (en este caso el tercer) valor de colegiatura por cada fila teniedo en cuenta la carrera
SELECT NTH_VALUE(colegiatura, 3) OVER(PARTITION BY carrera_id) AS tercer_colegiatura, *
FROM platzi.alumnos;

-- Hacer un ranking de las colegiaturas por carrera con gaps 
SELECT *,
	  RANK() OVER (PARTITION BY carrera_id ORDER BY colegiatura DESC) AS colegiatura_rank
FROM platzi.alumnos;

-- Hacer un ranking de las colegiaturas por carrera sin  gaps 
SELECT *,
	  DENSE_RANK() OVER (PARTITION BY carrera_id ORDER BY colegiatura DESC) AS colegiatura_rank
FROM platzi.alumnos;


-- (rank - 1)/(total-1) el lugar que ocupa el row en terminos en porcentaje
SELECT *,
	  PERCENT_RANK() OVER (PARTITION BY carrera_id ORDER BY colegiatura DESC) AS colegiatura_rank
FROM platzi.alumnos;
ORDER BY carrera_id, colegiatura_rank;
	  
