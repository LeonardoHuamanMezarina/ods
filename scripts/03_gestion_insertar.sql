INSERT INTO User (nombre, correo, telefono, descripcion, pregunta, Asesor_id)
VALUES
('Juan Pérez', 'juan.perez@example.com', 123456789, 'Consulta sobre ODS 11', '¿Cómo implementar ODS 11 en mi ciudad?', 1),
('Ana López', 'ana.lopez@example.com', 987654321, NULL, '¿Qué proyectos existen sobre ODS 11?', 2);



INSERT INTO Asesor (nombre, telefono, respuesta, estado_consulta)
VALUES
('Carlos García', 111222333, 'Responderé lo antes posible', 'P'),
('María Fernández', 444555666, 'Consulta en proceso', 'R');





INSERT INTO Calendario_Civico (fecha, evento, ods)
VALUES
('2024-06-05', 'Día Mundial del Medio Ambiente', 15),
('2024-09-21', 'Día Internacional de la Paz', 16),
('2024-07-11', 'Día Mundial de la Población', 11);


INSERT INTO Informe (id_asesor, id_user, fecha_registro)
VALUES
(1, 1, NOW()),
(2, 2, NOW());
