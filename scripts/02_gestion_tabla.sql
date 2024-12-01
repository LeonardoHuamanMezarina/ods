-- Crear la tabla User
CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único del usuario
    nombre VARCHAR(55) NOT NULL,       -- Nombre completo del usuario
    correo VARCHAR(200) NOT NULL,      -- Dirección de correo electrónico
    telefono INT NOT NULL,             -- Número de contacto del usuario
    descripcion TEXT,                  -- Detalle adicional sobre el usuario o consulta
    pregunta TEXT NOT NULL,            -- Pregunta realizada por el usuario
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP, -- Fecha de registro del usuario
    Asesor_id INT,                     -- Relación con la tabla Asesor
    FOREIGN KEY (Asesor_id) REFERENCES Asesor(id) 
);
-- Crear la tabla Asesor
CREATE TABLE Asesor (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único del asesor
    nombre VARCHAR(55) NOT NULL,       -- Nombre completo del asesor
    telefono INT NOT NULL,             -- Número de contacto del asesor
    respuesta TEXT,                    -- Respuesta proporcionada por el asesor
    estado_consulta CHAR(1) NOT NULL,  -- Estado de la consulta ('P' = Pendiente, 'R' = Resuelto)
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP -- Fecha de registro del asesor
);
-- Crear la tabla Calendario_Civico
CREATE TABLE Calendario_Civico (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único del evento
    fecha VARCHAR(55) NOT NULL,        -- Fecha del evento
    evento VARCHAR(200) NOT NULL,      -- Nombre o descripción del evento
    ods INT NOT NULL,                  -- ODS relacionado con el evento
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP -- Fecha de registro del evento
);
-- Crear la tabla Informe
CREATE TABLE Informe (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único del informe
    id_asesor INT NOT NULL,            -- Relación con la tabla Asesor
    id_user INT NOT NULL,              -- Relación con la tabla User
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP, -- Fecha de generación del informe
    FOREIGN KEY (id_asesor) REFERENCES Asesor(id),     -- Clave foránea con la tabla Asesor
    FOREIGN KEY (id_user) REFERENCES User(id)          -- Clave foránea con la tabla User
);
