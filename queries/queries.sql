-- 1. Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.
select apellido1,apellido2,nombre from persona WHERE tipo = 'alumno' ORDER by apellido1 ASC, apellido2 ASC, nombre ASC;

-- 2. Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta el seu número de telèfon en la base de dades. (nombre, apellido1, apellido2)
select nombre, apellido1, apellido2 FROM persona WHERE tipo = 'alumno' AND (telefono IS NULL OR telefono = '');

-- 3. Retorna el llistat dels alumnes que van néixer en 1999. (id, nombre, apellido1, apellido2, fecha_nacimiento)
SELECT id,nombre,apellido1,apellido2,fecha_nacimiento
FROM persona
WHERE YEAR(fecha_nacimiento) = '1999';


-- 4. Retorna el llistat de professors/es que no han donat d'alta el seu número de telèfon en la base de dades i a més el seu NIF acaba en K. (nombre, apellido1, apellido2, nif)
SELECT nombre, apellido1, apellido2,nif
FROM persona
WHERE tipo = 'profesor' AND (telefono IS NULL OR telefono = '') AND RIGHT(nif,1) = 'K';

-- 5. Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7. (id, nombre, cuatrimestre, curso, id_grado)
SELECT id,nombre,cuatrimestre,curso,id_grado
FROM asignatura
WHERE curso = 3 AND cuatrimestre = 1 AND id_grado = 7;

-- 6. Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan vinculats. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom. (apellido1, apellido2, nombre, departamento)
SELECT apellido1, apellido2, persona.nombre as nombre, departamento.nombre as departamento
FROM persona
RIGHT JOIN profesor ON profesor.id_profesor = persona.id
INNER JOIN departamento ON profesor.id_departamento = departamento.id
ORDER BY apellido1,apellido2,nombre;
-- 7. Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne/a amb NIF 26902806M. (nombre, anyo_inicio, anyo_fin)
SELECT asignatura.nombre as nombre,anyo_inicio,anyo_fin
FROM asignatura
INNER JOIN alumno_se_matricula_asignatura ON alumno_se_matricula_asignatura.id_asignatura = asignatura.id
INNER JOIN curso_escolar ON curso_escolar.id = alumno_se_matricula_asignatura.id_curso_escolar
INNER JOIN persona ON persona.id = alumno_se_matricula_asignatura.id_alumno
WHERE persona.nif = '26902806M';

-- 8. Retorna un llistat amb el nom de tots els departaments que tenen professors/es que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015). (nombre)
select DISTINCT(departamento.nombre)
from grado
INNER JOIN asignatura ON asignatura.id_grado = grado.id
INNER JOIN profesor ON profesor.id_profesor = asignatura.id_profesor
INNER JOIN departamento ON departamento.id = profesor.id_departamento
WHERE grado.nombre = "Grado en Ingeniería Informática (Plan 2015)";

-- 9. Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019. (nombre, apellido1, apellido2)
select persona.nombre, apellido1, apellido2
FROM persona
INNER JOIN alumno_se_matricula_asignatura ON alumno_se_matricula_asignatura.id_alumno = persona.id
INNER JOIN curso_escolar ON curso_escolar.id = alumno_se_matricula_asignatura.id_curso_escolar
WHERE anyo_inicio = 2018 AND anyo_fin = 2019
GROUP BY persona.id;
-- Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.
-- 10. Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats. El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor/a. El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom. (departamento, apellido1, apellido2, nombre)
SELECT departamento.nombre as departamento, apellido1, apellido2, persona.nombre 
FROM persona
LEFT JOIN profesor ON profesor.id_profesor = persona.id
LEFT JOIN departamento ON profesor.id_departamento = departamento.id
WHERE tipo = 'profesor'
ORDER BY departamento.nombre ASC, apellido1 ASC, apellido2 ASC, persona.nombre ASC;
-- 11. Retorna un llistat amb els professors/es que no estan associats a un departament. (apellido1, apellido2, nombre)
SELECT apellido1, apellido2, persona.nombre
FROM persona
LEFT JOIN profesor ON profesor.id_profesor = persona.id
WHERE persona.tipo = 'profesor' AND profesor.id_departamento IS NULL;

-- 12. Retorna un llistat amb els departaments que no tenen professors/es associats. (nombre)
SELECT departamento.nombre as nombre
FROM departamento
LEFT JOIN profesor ON profesor.id_departamento = departamento.id
WHERE profesor.id_profesor IS NULL;

-- 13. Retorna un llistat amb els professors/es que no imparteixen cap assignatura. (apellido1, apellido2, nombre)
select apellido1, apellido2, persona.nombre
FROM persona
LEFT JOIN profesor ON profesor.id_profesor = persona.id
LEFT JOIN asignatura ON asignatura.id_profesor = profesor.id_profesor
WHERE persona.tipo = 'profesor' AND asignatura.id IS NULL
GROUP BY persona.id;

-- 14. Retorna un llistat amb les assignatures que no tenen un professor/a assignat. (id, nombre)
SELECT id,nombre
FROM asignatura
WHERE asignatura.id_profesor IS NULL;

-- 15. Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar. (nombre)
SELECT * from departamento WHERE id NOT IN (SELECT p.id_departamento FROM profesor p JOIN asignatura a USING (id_profesor));
-- 16. Retorna el nombre total d'alumnes que hi ha. (total)
SELECT COUNT(*) as total
FROM persona
WHERE tipo = 'alumno';

-- 17. Calcula quants alumnes van néixer en 1999. (total)
SELECT COUNT(*) as total
FROM persona
WHERE tipo = 'alumno' AND YEAR(fecha_nacimiento) = 1999; 

-- 18. Calcula quants professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. El resultat només ha d'incloure els departaments que tenen professors/es associats i haurà d'estar ordenat de major a menor pel nombre de professors/es. (departamento, total)
SELECT departamento.nombre as departamento, COUNT(*) as total
FROM departamento
INNER JOIN profesor ON profesor.id_departamento = departamento.id
GROUP BY departamento.id
ORDER BY  total DESC;

-- 19. Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en cadascun d'ells. Tingui en compte que poden existir departaments que no tenen professors/es associats. Aquests departaments també han d'aparèixer en el llistat. (departamento, total)
SELECT departamento.nombre as departamento, COUNT(profesor.id_profesor) as total
FROM departamento
LEFT JOIN profesor ON profesor.id_departamento = departamento.id
GROUP BY departamento.id;

-- 20. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. Tingues en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures. (grau, total)
SELECT grado.nombre as grau, COUNT(asignatura.id) as total
FROM grado
LEFT JOIN asignatura ON asignatura.id_grado = grado.id
GROUP BY grado.id
order by total DESC;

-- 21. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades. (grau, total)
SELECT grado.nombre as grau, COUNT(*) as total
FROM grado
INNER JOIN asignatura ON asignatura.id_grado = grado.id
GROUP BY grado.id
HAVING COUNT(*) > 40;

-- 22. Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus. (grau, tipus, total_creditos)
select grado.nombre as grau, asignatura.tipo, SUM(creditos) as total_creditos
FROM grado
INNER JOIN asignatura ON asignatura.id_grado = grado.id
GROUP BY grado.id, asignatura.tipo;

-- 23. Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats. (anyo_inicio, total)
SELECT * 
froM alumno_se_matricula_asignatura
INNER JOIN curso_escolar ON curso_escolar.id = alumno_se_matricula_asignatura.id_curso_escolar

-- 24. Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures. (id, nombre, apellido1, apellido2, total)
SELECT persona.id, persona.nombre, persona.apellido1, persona.apellido2, COUNT(asignatura.id) total
FROM persona
LEFT JOIN asignatura ON asignatura.id_profesor = persona.id
GROUP BY persona.id
order by total DESC;

-- 25. Retorna totes les dades de l'alumne/a més jove. (*)
SELECT *
FROM persona
WHERE persona.fecha_nacimiento = (SELECT MAX(fecha_nacimiento) FROM persona WHERE tipo = 'alumno');


-- 26. Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura. (apellido1, apellido2, nombre)
SELECT apellido1,apellido2, persona.nombre as nombre
FROM persona
INNER JOIN profesor ON profesor.id_profesor = persona.id
LEFT JOIN asignatura ON asignatura.id_profesor = profesor.id_profesor;
