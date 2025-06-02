# 📊 Análisis de Consultas SQL


## 📈 Resumen
✅ 6 correctas de 24 queries

## ✅ Query 1: Correcto

⏱ Tiempo: 0.35 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 2: Correcto

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 3: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 4: Correcto

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 5: Correcto

⏱ Tiempo: 0.31 ms
✅ Se usó índice(s) en la consulta: id_grado

---

## ❌ Query 6: Incorrecto
```diff
--- 
+++ 
@@ -1,13 +1,13 @@
 apellido1 | apellido2 | nombre | departamento
-Fahey | Considine | Antonio | Economía y Empresa
+Ramirez | Gea | Zoe | Informática
 Hamill | Kozey | Manolo | Informática
+Schmidt | Fisher | David | Matemáticas
 Kohler | Schoen | Alejandro | Matemáticas
 Lemke | Rutherford | Cristina | Economía y Empresa
+Fahey | Considine | Antonio | Economía y Empresa
+Spencer | Lakin | Esther | Educación
+Streich | Hirthe | Carmen | Educación
+Ruecker | Upton | Guillermo | Educación
 Monahan | Murray | Micaela | Agronomía
-Ramirez | Gea | Zoe | Informática
-Ruecker | Upton | Guillermo | Educación
-Schmidt | Fisher | David | Matemáticas
+Stiedemann | Morissette | Alfredo | Química y Física
 Schowalter | Muller | Francesca | Química y Física
-Spencer | Lakin | Esther | Educación
-Stiedemann | Morissette | Alfredo | Química y Física
-Streich | Hirthe | Carmen | Educación
```

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_departamento

---

## ✅ Query 7: Correcto

⏱ Tiempo: 0.51 ms
✅ Se usó índice(s) en la consulta: PRIMARY, PRIMARY,id_asignatura,id_curso_escolar, PRIMARY,nif

---

## ❌ Query 8: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,4 @@
-nombre
-Informática
+nombre | apellido1 | apellido2
+Inma | Lakin | Yundt
+Irene | Hernández | Martínez
+Sonia | Gea | Ruiz
```

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: PRIMARY,id_curso_escolar, PRIMARY, PRIMARY,nif

---

## ❌ Query 9: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,13 @@
-nombre | apellido1 | apellido2
-Inma | Lakin | Yundt
-Irene | Hernández | Martínez
-Sonia | Gea | Ruiz
+departamento | apellido1 | apellido2 | nombre
+Agronomía | Monahan | Murray | Micaela
+Economía y Empresa | Fahey | Considine | Antonio
+Economía y Empresa | Lemke | Rutherford | Cristina
+Educación | Ruecker | Upton | Guillermo
+Educación | Spencer | Lakin | Esther
+Educación | Streich | Hirthe | Carmen
+Informática | Hamill | Kozey | Manolo
+Informática | Ramirez | Gea | Zoe
+Matemáticas | Kohler | Schoen | Alejandro
+Matemáticas | Schmidt | Fisher | David
+Química y Física | Schowalter | Muller | Francesca
+Química y Física | Stiedemann | Morissette | Alfredo
```

⏱ Tiempo: 0.38 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ❌ Query 10: Incorrecto
```diff
--- 
+++ 
@@ -1,13 +1 @@
-departamento | apellido1 | apellido2 | nombre
-Agronomía | Monahan | Murray | Micaela
-Economía y Empresa | Fahey | Considine | Antonio
-Economía y Empresa | Lemke | Rutherford | Cristina
-Educación | Ruecker | Upton | Guillermo
-Educación | Spencer | Lakin | Esther
-Educación | Streich | Hirthe | Carmen
-Informática | Hamill | Kozey | Manolo
-Informática | Ramirez | Gea | Zoe
-Matemáticas | Kohler | Schoen | Alejandro
-Matemáticas | Schmidt | Fisher | David
-Química y Física | Schowalter | Muller | Francesca
-Química y Física | Stiedemann | Morissette | Alfredo
+apellido1 | apellido2 | nombre
```

⏱ Tiempo: 0.31 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ❌ Query 11: Incorrecto
```diff
--- 
+++ 
@@ -1 +1,4 @@
-apellido1 | apellido2 | nombre
+nombre
+Filología
+Derecho
+Biología y Geología
```

⏱ Tiempo: 0.30 ms
✅ Se usó índice(s) en la consulta: id_departamento

---

## ❌ Query 12: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,11 @@
-nombre
-Filología
-Derecho
-Biología y Geología
+apellido1 | apellido2 | nombre
+Schmidt | Fisher | David
+Lemke | Rutherford | Cristina
+Spencer | Lakin | Esther
+Streich | Hirthe | Carmen
+Stiedemann | Morissette | Alfredo
+Kohler | Schoen | Alejandro
+Fahey | Considine | Antonio
+Ruecker | Upton | Guillermo
+Monahan | Murray | Micaela
+Schowalter | Muller | Francesca
```

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_profesor, PRIMARY,nif

---

## ❌ Query 13: Incorrecto
```diff
--- 
+++ 
@@ -1,11 +1,63 @@
-apellido1 | apellido2 | nombre
-Schmidt | Fisher | David
-Kohler | Schoen | Alejandro
-Lemke | Rutherford | Cristina
-Fahey | Considine | Antonio
-Spencer | Lakin | Esther
-Streich | Hirthe | Carmen
-Ruecker | Upton | Guillermo
-Monahan | Murray | Micaela
-Stiedemann | Morissette | Alfredo
-Schowalter | Muller | Francesca
+id | nombre
+22.00 | Ingeniería de Requisitos
+23.00 | Integración de las Tecnologías de la Información en las Organizaciones
+24.00 | Modelado y Diseño del Software 1
+25.00 | Multiprocesadores
+26.00 | Seguridad y cumplimiento normativo
+27.00 | Sistema de Información para las Organizaciones
+28.00 | Tecnologías web
+29.00 | Teoría de códigos y criptografía
+30.00 | Administración de bases de datos
+31.00 | Herramientas y Métodos de Ingeniería del Software
+32.00 | Informática industrial y robótica
+33.00 | Ingeniería de Sistemas de Información
+34.00 | Modelado y Diseño del Software 2
+35.00 | Negocio Electrónico
+36.00 | Periféricos e interfaces
+37.00 | Sistemas de tiempo real
+38.00 | Tecnologías de acceso a red
+39.00 | Tratamiento digital de imágenes
+40.00 | Administración de redes y sistemas operativos
+41.00 | Almacenes de Datos
+42.00 | Fiabilidad y Gestión de Riesgos
+43.00 | Líneas de Productos Software
+44.00 | Procesos de Ingeniería del Software 1
+45.00 | Tecnologías multimedia
+46.00 | Análisis y planificación de las TI
+47.00 | Desarrollo Rápido de Aplicaciones
+48.00 | Gestión de la Calidad y de la Innovación Tecnológica
+49.00 | Inteligencia del Negocio
+50.00 | Procesos de Ingeniería del Software 2
+51.00 | Seguridad Informática
+52.00 | Biologia celular
+53.00 | Física
+54.00 | Matemáticas I
+55.00 | Química general
+56.00 | Química orgánica
+57.00 | Biología vegetal y animal
+58.00 | Bioquímica
+59.00 | Genética
+60.00 | Matemáticas II
+61.00 | Microbiología
+62.00 | Botánica agrícola
+63.00 | Fisiología vegetal
+64.00 | Genética molecular
+65.00 | Ingeniería bioquímica
+66.00 | Termodinámica y cinética química aplicada
+67.00 | Biorreactores
+68.00 | Biotecnología microbiana
+69.00 | Ingeniería genética
+70.00 | Inmunología
+71.00 | Virología
+72.00 | Bases moleculares del desarrollo vegetal
+73.00 | Fisiología animal
+74.00 | Metabolismo y biosíntesis de biomoléculas
+75.00 | Operaciones de separación
+76.00 | Patología molecular de plantas
+77.00 | Técnicas instrumentales básicas
+78.00 | Bioinformática
+79.00 | Biotecnología de los productos hortofrutículas
+80.00 | Biotecnología vegetal
+81.00 | Genómica y proteómica
+82.00 | Procesos biotecnológicos
+83.00 | Técnicas instrumentales avanzadas
```

⏱ Tiempo: 0.30 ms
✅ Se usó índice(s) en la consulta: id_profesor

---

## ❌ Query 14: Incorrecto
```diff
--- 
+++ 
@@ -1,63 +1,25 @@
-id | nombre
-22.00 | Ingeniería de Requisitos
-23.00 | Integración de las Tecnologías de la Información en las Organizaciones
-24.00 | Modelado y Diseño del Software 1
-25.00 | Multiprocesadores
-26.00 | Seguridad y cumplimiento normativo
-27.00 | Sistema de Información para las Organizaciones
-28.00 | Tecnologías web
-29.00 | Teoría de códigos y criptografía
-30.00 | Administración de bases de datos
-31.00 | Herramientas y Métodos de Ingeniería del Software
-32.00 | Informática industrial y robótica
-33.00 | Ingeniería de Sistemas de Información
-34.00 | Modelado y Diseño del Software 2
-35.00 | Negocio Electrónico
-36.00 | Periféricos e interfaces
-37.00 | Sistemas de tiempo real
-38.00 | Tecnologías de acceso a red
-39.00 | Tratamiento digital de imágenes
-40.00 | Administración de redes y sistemas operativos
-41.00 | Almacenes de Datos
-42.00 | Fiabilidad y Gestión de Riesgos
-43.00 | Líneas de Productos Software
-44.00 | Procesos de Ingeniería del Software 1
-45.00 | Tecnologías multimedia
-46.00 | Análisis y planificación de las TI
-47.00 | Desarrollo Rápido de Aplicaciones
-48.00 | Gestión de la Calidad y de la Innovación Tecnológica
-49.00 | Inteligencia del Negocio
-50.00 | Procesos de Ingeniería del Software 2
-51.00 | Seguridad Informática
-52.00 | Biologia celular
-53.00 | Física
-54.00 | Matemáticas I
-55.00 | Química general
-56.00 | Química orgánica
-57.00 | Biología vegetal y animal
-58.00 | Bioquímica
-59.00 | Genética
-60.00 | Matemáticas II
-61.00 | Microbiología
-62.00 | Botánica agrícola
-63.00 | Fisiología vegetal
-64.00 | Genética molecular
-65.00 | Ingeniería bioquímica
-66.00 | Termodinámica y cinética química aplicada
-67.00 | Biorreactores
-68.00 | Biotecnología microbiana
-69.00 | Ingeniería genética
-70.00 | Inmunología
-71.00 | Virología
-72.00 | Bases moleculares del desarrollo vegetal
-73.00 | Fisiología animal
-74.00 | Metabolismo y biosíntesis de biomoléculas
-75.00 | Operaciones de separación
-76.00 | Patología molecular de plantas
-77.00 | Técnicas instrumentales básicas
-78.00 | Bioinformática
-79.00 | Biotecnología de los productos hortofrutículas
-80.00 | Biotecnología vegetal
-81.00 | Genómica y proteómica
-82.00 | Procesos biotecnológicos
-83.00 | Técnicas instrumentales avanzadas
+nombre
+Informática
+Informática
+Informática
+Informática
+Informática
+Informática
+Informática
+Informática
+Informática
+Informática
+Informática
+Matemáticas
+Matemáticas
+Economía y Empresa
+Economía y Empresa
+Educación
+Educación
+Educación
+Agronomía
+Química y Física
+Química y Física
+Filología
+Derecho
+Biología y Geología
```

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: id_profesor, id_departamento, id_asignatura

---

## ❌ Query 15: Incorrecto
```diff
--- 
+++ 
@@ -1,10 +1,2 @@
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
+total
+12.00
```

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 16: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,2 @@
 total
-12.00
+2.00
```

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 17: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,7 @@
-total
-2.00
+nombre | total
+Educación | 3.00
+Informática | 2.00
+Matemáticas | 2.00
+Economía y Empresa | 2.00
+Química y Física | 2.00
+Agronomía | 1.00
```

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_departamento

---

## ❌ Query 18: Incorrecto
```diff
--- 
+++ 
@@ -1,7 +1,11 @@
-departamento | total
-Educación | 3.00
-Informática | 2.00
-Matemáticas | 2.00
-Economía y Empresa | 2.00
-Química y Física | 2.00
-Agronomía | 1.00
+nombre | total
+Grado en Ingeniería Informática (Plan 2015) | 51.00
+Grado en Biotecnología (Plan 2015) | 32.00
+Grado en Ingeniería Agrícola (Plan 2015) | 0.00
+Grado en Ingeniería Eléctrica (Plan 2014) | 0.00
+Grado en Ingeniería Electrónica Industrial (Plan 2010) | 0.00
+Grado en Ingeniería Mecánica (Plan 2010) | 0.00
+Grado en Ingeniería Química Industrial (Plan 2010) | 0.00
+Grado en Ciencias Ambientales (Plan 2009) | 0.00
+Grado en Matemáticas (Plan 2010) | 0.00
+Grado en Química (Plan 2009) | 0.00
```

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_grado

---

## ❌ Query 19: Incorrecto
```diff
--- 
+++ 
@@ -1,10 +1,2 @@
-departamento | total
-Informática | 2.00
-Matemáticas | 2.00
-Economía y Empresa | 2.00
-Educación | 3.00
-Agronomía | 1.00
-Química y Física | 2.00
-Filología | 0.00
-Derecho | 0.00
-Biología y Geología | 0.00
+nombre | total
+Grado en Ingeniería Informática (Plan 2015) | 51.00
```

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_grado

---

## ❌ Query 20: Incorrecto
```diff
--- 
+++ 
@@ -1,11 +1,6 @@
-grau | total
-Grado en Ingeniería Informática (Plan 2015) | 51.00
-Grado en Biotecnología (Plan 2015) | 32.00
-Grado en Ingeniería Agrícola (Plan 2015) | 0.00
-Grado en Ingeniería Eléctrica (Plan 2014) | 0.00
-Grado en Ingeniería Electrónica Industrial (Plan 2010) | 0.00
-Grado en Ingeniería Mecánica (Plan 2010) | 0.00
-Grado en Ingeniería Química Industrial (Plan 2010) | 0.00
-Grado en Ciencias Ambientales (Plan 2009) | 0.00
-Grado en Matemáticas (Plan 2010) | 0.00
-Grado en Química (Plan 2009) | 0.00
+nombre | tipo | total_creditos
+Grado en Ingeniería Informática (Plan 2015) | básica | 72.00
+Grado en Ingeniería Informática (Plan 2015) | obligatoria | 54.00
+Grado en Ingeniería Informática (Plan 2015) | optativa | 180.00
+Grado en Biotecnología (Plan 2015) | básica | 60.00
+Grado en Biotecnología (Plan 2015) | obligatoria | 120.00
```

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_grado

---

## ❌ Query 21: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,4 @@
-grau | total
-Grado en Ingeniería Informática (Plan 2015) | 51.00
+anyo_inicio | total
+2014.00 | 3.00
+2015.00 | 3.00
+2017.00 | 3.00
```

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: PRIMARY, PRIMARY,id_asignatura,id_curso_escolar

---

## ❌ Query 22: Incorrecto
```diff
--- 
+++ 
@@ -1,6 +1,25 @@
-grau | tipo | total_creditos
-Grado en Ingeniería Informática (Plan 2015) | básica | 72.00
-Grado en Ingeniería Informática (Plan 2015) | obligatoria | 54.00
-Grado en Ingeniería Informática (Plan 2015) | optativa | 180.00
-Grado en Biotecnología (Plan 2015) | básica | 60.00
-Grado en Biotecnología (Plan 2015) | obligatoria | 120.00
+id | nombre | apellido1 | apellido2 | total
+14.00 | Manolo | Hamill | Kozey | 11.00
+3.00 | Zoe | Ramirez | Gea | 10.00
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
+5.00 | David | Schmidt | Fisher | 0.00
+4.00 | Pedro | Heller | Pagac | 0.00
+2.00 | Juan | Saez | Vega | 0.00
```

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: id_profesor, PRIMARY,nif

---

## ❌ Query 23: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,2 @@
-anyo_inicio | total
-2014.00 | 3.00
-2018.00 | 3.00
+id | nif | nombre | apellido1 | apellido2 | ciudad | direccion | telefono | fecha_nacimiento | sexo | tipo
+4.00 | 17105885A | Pedro | Heller | Pagac | Almería | C/ Estrella fugaz | NULL | 2000-10-05 | H | alumno
```

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ❌ Query 24: Error
- **Descripción**: 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'universidad.persona.apellido1' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by

