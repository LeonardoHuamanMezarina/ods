# **Desarrollo del Sistema con MySQL**

## **Introducción**
El sistema está diseñado para apoyar a una iniciativa que promueva comunidades sostenibles y mejor calidad de vida en las ciudades. Este sistema ayudará a gestionar consultas relacionadas con proyectos urbanos, sostenibilidad y eventos importantes relacionados con el ODS 11.


### **1. ¿Qué guardará la base de datos?**

* **Usuarios:** Personas interesadas en temas del ODS 11, como planificación urbana, transporte sostenible o eventos comunitarios. Aquí guardamos sus preguntas y datos de contacto.

* **Asesores:** Expertos o responsables de responder preguntas sobre proyectos, actividades o campañas relacionadas con comunidades sostenibles.

* **Calendario:** Una lista de eventos importantes que promueven los objetivos del ODS 11, como el Día Mundial de las Ciudades o actividades de concienciación ambiental.

* **Relación entre usuarios y asesores:** Un registro de qué asesor respondió a cada consulta, permitiendo un seguimiento claro y eficiente.



### **2. Crear las tablas**

Primero, usamos MySQL para diseñar estas "tablas" (que son como hojas de cálculo, pero dentro del sistema). Cada tabla tiene su propósito:

* **Usuarios (User):**
    Guarda las consultas de personas interesadas en temas de sostenibilidad urbana:

```bash
CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    nombre VARCHAR(55) NOT NULL, 
    correo VARCHAR(200) NOT NULL,
    telefono INT NOT NULL, 
    descripcion TEXT NOT NULL,
    pregunta TEXT NOT NULL, 
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);
```
* **Asesores (Asesor):**
    Guarda información de los expertos que responderán las consultas:

```bash
CREATE TABLE Asesor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(55) NOT NULL,
    telefono INT NOT NULL,
    respuesta TEXT,
    estado_consulta CHAR(1) DEFAULT 'P', -- P: Pendiente, R: Resuelto
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP 
);
```
* **Eventos (Calendario_Civico):**
    Eventos relevantes para comunidades sostenibles y la promoción del ODS 11:

```bash
CREATE TABLE Calendario_Civico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha VARCHAR(55) NOT NULL,
    evento VARCHAR(200) NOT NULL, 
    ods INT NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP 
);

```

* **Relación entre usuarios y asesores (Informe):**
    Conecta consultas de usuarios con los asesores que las atienden:

```bash
CREATE TABLE Informe (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_asesor INT NOT NULL,
    id_user INT NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_asesor) REFERENCES Asesor(id),
    FOREIGN KEY (id_user) REFERENCES User(id)
);

```

### **3. ¿Cómo se usa?**

* **Registrar una consulta:**
    Los interesados en temas como transporte sostenible o reciclaje pueden registrar sus preguntas. Por ejemplo:
```bash
INSERT INTO User (nombre, correo, telefono, descripcion, pregunta) 
VALUES ('Juan Pérez', 'juan@gmail.com', 987654321, 'Quiere saber más información', '¿Cuáles son las demas ODS?');

```

* **Asignación Automática de Consultas:**
    Se asigna la consulta a un asesor que esté encargado de responder temas específicos. Por ejemplo:

```bash
INSERT INTO Informe (id_asesor, id_user) 
VALUES (1, 2); -- El asesor 1 atiende la consulta del usuario 2.

```

* **Registro de Eventos Importantes:**
    Se pueden registrar eventos como campañas o conferencias relacionadas con el ODS 11. Por ejemplo:

```bash
INSERT INTO Calendario_Civico (fecha, evento, ods) 
VALUES ('2024-10-31', 'Día Mundial de las Ciudades', 'ODS 11: Ciudades Sostenibles');


```

* **Búsqueda de Consultas y Respuestas:**
    Podemos buscar consultas pendientes o resueltas:

```bash
SELECT u.nombre, u.pregunta, a.nombre AS asesor 
FROM User u
LEFT JOIN Informe i ON u.id = i.id_user
LEFT JOIN Asesor a ON i.id_asesor = a.id
WHERE a.estado_consulta = 'P';

```
### **4. Beneficios del Sistema para el ODS 11**

* **Mayor participación comunitaria:**
    Las personas pueden informarse sobre iniciativas sostenibles y participar activamente.

* **Atención eficiente:**
    Los asesores pueden responder consultas rápidamente, promoviendo un mayor compromiso ciudadano.

* **Monitoreo y análisis:**
    La generación de reportes permite identificar cuáles son los temas de mayor interés en las consultas ayudando a diseñar mejores campañas y eventos.