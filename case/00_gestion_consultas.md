# **Sistema de Registro y Gestión de Consultas**

### **Descripción del caso:**

El Instituto Valle Grande, comprometido con los principios del Objetivo de Desarrollo Sostenible (ODS) 11, busca desarrollar una página web que permita gestionar de manera eficiente las consultas de los interesados en sus carreras profesionales: Análisis de Sistemas Empresariales y Gestión Agrícola. Este sistema pretende fomentar una experiencia más sostenible y accesible al facilitar el acceso a información educativa de manera organizada y rápida.


### **Propuesta de flujo de datos**

**1. Registro de consultas:**
* El interesado llena un formulario ( se registra en la tabla. `User`)
* Su consulta se almacena en el campo `pregunta`.

**2. Asignación automática de consultas:**
* Basado en la carrera mencionada en la consulta, se asigna automáticamente un asesor de la tabla `Asesor`.

**3. Respuesta de consultas:**
* El asesor consulta la tabla `User`, redacta una `respuesta` y actualiza los campos respuesta y `estado_consulta` en la tabla `Asesor`.

**4. Generación de reportes:**
* Los datos de la tabla `Informe` se utilizan para medir el desempeño de los asesores (consultas atendidas, tiempos de respuesta, etc.).

**5. Eventos relacionados:**
* La tabla `Calendario_Civico` se usa para notificar a los interesados sobre actividades institucionales.

### **Beneficios esperados**

* **Automatización:** Las consultas se asignan automáticamente, reduciendo la carga operativa.
* **Seguimiento:** Con la tabla Informe, el instituto puede rastrear cada consulta hasta su resolución.
* **Eficiencia:** Los interesados reciben respuestas rápidas y personalizadas.
* **Decisiones informadas:** Los reportes permiten identificar áreas de mejora y oportunidades estratégicas.