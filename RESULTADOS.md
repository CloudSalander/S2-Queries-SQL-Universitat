# 📊 Análisis de Consultas SQL


## 📈 Resumen
✅ 21 correctas de 26 queries

## ✅ Query 1: Correcto

⏱ Tiempo: 0.48 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 2: Correcto

⏱ Tiempo: 0.34 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 3: Correcto

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 4: Correcto

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 5: Correcto

⏱ Tiempo: 0.34 ms
✅ Se usó índice(s) en la consulta: id_grado

---

## ✅ Query 6: Correcto

⏱ Tiempo: 0.40 ms
✅ Se usó índice(s) en la consulta: id_departamento, PRIMARY

---

## ✅ Query 7: Correcto

⏱ Tiempo: 0.57 ms
✅ Se usó índice(s) en la consulta: PRIMARY,id_asignatura,id_curso_escolar, PRIMARY,nif, PRIMARY

---

## ✅ Query 8: Correcto

⏱ Tiempo: 0.39 ms
✅ Se usó índice(s) en la consulta: id_profesor,id_grado, PRIMARY,id_departamento, PRIMARY

---

## ✅ Query 9: Correcto

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: PRIMARY,nif, PRIMARY,id_curso_escolar, PRIMARY

---

## ✅ Query 10: Correcto

⏱ Tiempo: 0.41 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 11: Correcto

⏱ Tiempo: 0.31 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 12: Correcto

⏱ Tiempo: 0.31 ms
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

⏱ Tiempo: 0.38 ms
✅ Se usó índice(s) en la consulta: id_profesor, PRIMARY,nif, PRIMARY

---

## ✅ Query 14: Correcto

⏱ Tiempo: 0.30 ms
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

⏱ Tiempo: 0.38 ms
✅ Se usó índice(s) en la consulta: id_profesor, PRIMARY,id_departamento

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.

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

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: id_departamento, PRIMARY

---

## ✅ Query 19: Correcto

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: id_departamento, PRIMARY

---

## ✅ Query 20: Correcto

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: id_grado, PRIMARY

---

## ✅ Query 21: Correcto

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: id_grado, PRIMARY

---

## ✅ Query 22: Correcto

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: id_grado, PRIMARY

---

## ❌ Query 23: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,4 @@
 anyo_inicio | total
 2014.00 | 3.00
-2018.00 | 3.00
+2015.00 | 3.00
+2017.00 | 3.00
```

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: PRIMARY,id_asignatura,id_curso_escolar, PRIMARY

---

## ❌ Query 24: Incorrecto
```diff
--- 
+++ 
@@ -1,13 +1,25 @@
 id | nombre | apellido1 | apellido2 | total
 14.00 | Manolo | Hamill | Kozey | 11.00
 3.00 | Zoe | Ramirez | Gea | 10.00
+13.00 | Alfredo | Stiedemann | Morissette | 0.00
+24.00 | Sonia | Gea | Ruiz | 0.00
+23.00 | Irene | Hernández | Martínez | 0.00
+22.00 | Antonio | Domínguez | Guerrero | 0.00
+21.00 | Juan | Gutiérrez | López | 0.00
+20.00 | Francesca | Schowalter | Muller | 0.00
+19.00 | Inma | Lakin | Yundt | 0.00
+18.00 | Micaela | Monahan | Murray | 0.00
+17.00 | Guillermo | Ruecker | Upton | 0.00
+16.00 | Antonio | Fahey | Considine | 0.00
+15.00 | Alejandro | Kohler | Schoen | 0.00
+1.00 | Salvador | Sánchez | Pérez | 0.00
+12.00 | Carmen | Streich | Hirthe | 0.00
+11.00 | Daniel | Herman | Pacocha | 0.00
+10.00 | Esther | Spencer | Lakin | 0.00
+9.00 | Ramón | Herzog | Tremblay | 0.00
+8.00 | Cristina | Lemke | Rutherford | 0.00
+7.00 | Ismael | Strosin | Turcotte | 0.00
+6.00 | José | Koss | Bayer | 0.00
 5.00 | David | Schmidt | Fisher | 0.00
-15.00 | Alejandro | Kohler | Schoen | 0.00
-8.00 | Cristina | Lemke | Rutherford | 0.00
-16.00 | Antonio | Fahey | Considine | 0.00
-10.00 | Esther | Spencer | Lakin | 0.00
-12.00 | Carmen | Streich | Hirthe | 0.00
-17.00 | Guillermo | Ruecker | Upton | 0.00
-18.00 | Micaela | Monahan | Murray | 0.00
-13.00 | Alfredo | Stiedemann | Morissette | 0.00
-20.00 | Francesca | Schowalter | Muller | 0.00
+4.00 | Pedro | Heller | Pagac | 0.00
+2.00 | Juan | Saez | Vega | 0.00
```

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: id_profesor, PRIMARY,nif

---

## ✅ Query 25: Correcto

⏱ Tiempo: 0.35 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ❌ Query 26: Error
- **Descripción**: 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'universidad.persona.apellido1' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by

