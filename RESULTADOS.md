# 📊 Análisis de Consultas SQL


## 📈 Resumen
✅ 20 correctas de 25 queries

## ✅ Query 1: Correcto

⏱ Tiempo: 0.39 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 2: Correcto

⏱ Tiempo: 0.34 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 3: Correcto

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 4: Correcto

⏱ Tiempo: 0.33 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 5: Correcto

⏱ Tiempo: 0.34 ms
✅ Se usó índice(s) en la consulta: id_grado

---

## ✅ Query 6: Correcto

⏱ Tiempo: 0.41 ms
✅ Se usó índice(s) en la consulta: id_departamento, PRIMARY

---

## ✅ Query 7: Correcto

⏱ Tiempo: 0.54 ms
✅ Se usó índice(s) en la consulta: PRIMARY,nif, PRIMARY, PRIMARY,id_asignatura,id_curso_escolar

---

## ✅ Query 8: Correcto

⏱ Tiempo: 0.39 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_profesor,id_grado, PRIMARY,id_departamento

---

## ✅ Query 9: Correcto

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: PRIMARY,nif, PRIMARY, PRIMARY,id_curso_escolar

---

## ✅ Query 10: Correcto

⏱ Tiempo: 0.40 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 11: Correcto

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 12: Correcto

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: id_departamento

---

## ❌ Query 13: Incorrecto
```diff
--- 
+++ 
@@ -1,11 +1,11 @@
 apellido1 | apellido2 | nombre
 Schmidt | Fisher | David
-Kohler | Schoen | Alejandro
 Lemke | Rutherford | Cristina
-Fahey | Considine | Antonio
 Spencer | Lakin | Esther
 Streich | Hirthe | Carmen
+Stiedemann | Morissette | Alfredo
+Kohler | Schoen | Alejandro
+Fahey | Considine | Antonio
 Ruecker | Upton | Guillermo
 Monahan | Murray | Micaela
-Stiedemann | Morissette | Alfredo
 Schowalter | Muller | Francesca
```

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_profesor

---

## ✅ Query 14: Correcto

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: id_profesor

---

## ❌ Query 15: Incorrecto
```diff
--- 
+++ 
@@ -1,10 +1,9 @@
-nombre
-Informática
-Matemáticas
-Economía y Empresa
-Educación
-Agronomía
-Química y Física
-Filología
-Derecho
-Biología y Geología
+id | nombre
+2.00 | Matemáticas
+3.00 | Economía y Empresa
+4.00 | Educación
+5.00 | Agronomía
+6.00 | Química y Física
+7.00 | Filología
+8.00 | Derecho
+9.00 | Biología y Geología
```

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: id_profesor, PRIMARY,id_departamento

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ✅ Query 16: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 17: Correcto

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 18: Correcto

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: id_departamento, PRIMARY

---

## ✅ Query 19: Correcto

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: id_departamento, PRIMARY

---

## ✅ Query 20: Correcto

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_grado

---

## ✅ Query 21: Correcto

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_grado

---

## ✅ Query 22: Correcto

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_grado

---

## ❌ Query 23: Error
- **Descripción**: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELECT persona.id, persona.nombre, persona.apellido1, persona.apellido2, COUNT(a' at line 7


## ❌ Query 24: Incorrecto
```diff
--- 
+++ 
@@ -1,13 +1,2 @@
-id | nombre | apellido1 | apellido2 | total
-14.00 | Manolo | Hamill | Kozey | 11.00
-3.00 | Zoe | Ramirez | Gea | 10.00
-5.00 | David | Schmidt | Fisher | 0.00
-15.00 | Alejandro | Kohler | Schoen | 0.00
-8.00 | Cristina | Lemke | Rutherford | 0.00
-16.00 | Antonio | Fahey | Considine | 0.00
-10.00 | Esther | Spencer | Lakin | 0.00
-12.00 | Carmen | Streich | Hirthe | 0.00
-17.00 | Guillermo | Ruecker | Upton | 0.00
-18.00 | Micaela | Monahan | Murray | 0.00
-13.00 | Alfredo | Stiedemann | Morissette | 0.00
-20.00 | Francesca | Schowalter | Muller | 0.00
+id | nif | nombre | apellido1 | apellido2 | ciudad | direccion | telefono | fecha_nacimiento | sexo | tipo
+4.00 | 17105885A | Pedro | Heller | Pagac | Almería | C/ Estrella fugaz | NULL | 2000-10-05 | H | alumno
```

⏱ Tiempo: 0.34 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ❌ Query 25: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,25 @@
 id | nif | nombre | apellido1 | apellido2 | ciudad | direccion | telefono | fecha_nacimiento | sexo | tipo
+1.00 | 26902806M | Salvador | Sánchez | Pérez | Almería | C/ Real del barrio alto | 950254837 | 1991-03-28 | H | alumno
+2.00 | 89542419S | Juan | Saez | Vega | Almería | C/ Mercurio | 618253876 | 1992-08-08 | H | alumno
+3.00 | 11105554G | Zoe | Ramirez | Gea | Almería | C/ Marte | 618223876 | 1979-08-19 | M | profesor
 4.00 | 17105885A | Pedro | Heller | Pagac | Almería | C/ Estrella fugaz | NULL | 2000-10-05 | H | alumno
+5.00 | 38223286T | David | Schmidt | Fisher | Almería | C/ Venus | 678516294 | 1978-01-19 | H | profesor
+6.00 | 04233869Y | José | Koss | Bayer | Almería | C/ Júpiter | 628349590 | 1998-01-28 | H | alumno
+7.00 | 97258166K | Ismael | Strosin | Turcotte | Almería | C/ Neptuno | NULL | 1999-05-24 | H | alumno
+8.00 | 79503962T | Cristina | Lemke | Rutherford | Almería | C/ Saturno | 669162534 | 1977-08-21 | M | profesor
+9.00 | 82842571K | Ramón | Herzog | Tremblay | Almería | C/ Urano | 626351429 | 1996-11-21 | H | alumno
+10.00 | 61142000L | Esther | Spencer | Lakin | Almería | C/ Plutón | NULL | 1977-05-19 | M | profesor
+11.00 | 46900725E | Daniel | Herman | Pacocha | Almería | C/ Andarax | 679837625 | 1997-04-26 | H | alumno
+12.00 | 85366986W | Carmen | Streich | Hirthe | Almería | C/ Almanzora | NULL | 1971-04-29 | M | profesor
+13.00 | 73571384L | Alfredo | Stiedemann | Morissette | Almería | C/ Guadalquivir | 950896725 | 1980-02-01 | H | profesor
+14.00 | 82937751G | Manolo | Hamill | Kozey | Almería | C/ Duero | 950263514 | 1977-01-02 | H | profesor
+15.00 | 80502866Z | Alejandro | Kohler | Schoen | Almería | C/ Tajo | 668726354 | 1980-03-14 | H | profesor
+16.00 | 10485008K | Antonio | Fahey | Considine | Almería | C/ Sierra de los Filabres | NULL | 1982-03-18 | H | profesor
+17.00 | 85869555K | Guillermo | Ruecker | Upton | Almería | C/ Sierra de Gádor | NULL | 1973-05-05 | H | profesor
+18.00 | 04326833G | Micaela | Monahan | Murray | Almería | C/ Veleta | 662765413 | 1976-02-25 | H | profesor
+19.00 | 11578526G | Inma | Lakin | Yundt | Almería | C/ Picos de Europa | 678652431 | 1998-09-01 | M | alumno
+20.00 | 79221403L | Francesca | Schowalter | Muller | Almería | C/ Quinto pino | NULL | 1980-10-31 | H | profesor
+21.00 | 79089577Y | Juan | Gutiérrez | López | Almería | C/ Los pinos | 678652431 | 1998-01-01 | H | alumno
+22.00 | 41491230N | Antonio | Domínguez | Guerrero | Almería | C/ Cabo de Gata | 626652498 | 1999-02-11 | H | alumno
+23.00 | 64753215G | Irene | Hernández | Martínez | Almería | C/ Zapillo | 628452384 | 1996-03-12 | M | alumno
+24.00 | 85135690V | Sonia | Gea | Ruiz | Almería | C/ Mercurio | 678812017 | 1995-04-13 | M | alumno
```

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---
