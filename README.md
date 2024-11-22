# Sistema Automatizado de Gestión de Inventario para Tiptronic SAC

## Descripción del Proyecto

Este proyecto desarrolla un **sistema automatizado de gestión de inventario** para la empresa **Tiptronic SAC**, dedicada a la distribución de productos electrónicos. Utilizando **Oracle Database**, el sistema resuelve problemas relacionados con la actualización y seguimiento del inventario, minimizando errores manuales y optimizando la eficiencia en la preparación de pedidos.

El diseño incluye:
- Un modelo de datos relacional normalizado.
- Automatización de procesos con triggers y secuencias.
- Generación de reportes SQL para apoyar la toma de decisiones.

---

## Características Principales

- **Modelado de Datos**:
  - Tablas para representar productos, almacenes, ubicaciones y transacciones.
  - Relaciones claras entre las tablas para garantizar la integridad de los datos.

- **Automatización**:
  - Triggers que actualizan el stock automáticamente tras cada transacción.
  - Secuencias para generar identificadores únicos.

- **Reportes SQL**:
  - Productos con bajo stock.
  - Resumen de transacciones por periodo.
  - Distribución de productos por almacén.

- **Escalabilidad**:
  - Diseño preparado para futuras integraciones con interfaces de usuario y sistemas ERP.

---

## Tecnologías Utilizadas

- **Base de Datos**: Oracle Database 11g
- **Herramientas**:
  - Oracle SQL Developer
  - Oracle SQL Developer Data Modeler
- **Lenguaje SQL**: Triggers, secuencias y consultas avanzadas.
- **Documentación**: Markdown, PDF

---

## Estructura del Proyecto

```plaintext
│   README.md
│
├───Aplicacion
│       Codigo_Ejecutado .png
│       Codigo_Ejecutado2 .png
│       Entorno_Aplicacion.png
│       Logical.png
│       Relational_1.png
│
├───Documentacion
├───Modelado
│       Modelo_Conceptual.dmd
│       Modelo_Fisico.dmd
│
└───SQL
        sql_generado.sql
```

---

## Instalación y Configuración

1. **Configurar Oracle Database**:
   - Instalar Oracle Database 11g o una versión compatible.
   - Crear un usuario con privilegios para ejecutar scripts.

2. **Importar Scripts**:
   - Ejecutar `Crear_Tablas.sql` para crear las tablas y relaciones.
   - Ejecutar `Triggers.sql` para habilitar la automatización.
   - Cargar datos de prueba con `Datos_Prueba.sql`.

3. **Generar Reportes**:
   - Ejecutar las consultas de `Consultas_Reportes.sql` para obtener reportes como CSV o visualizar resultados directamente.

---

## Uso

1. **Actualizar Inventario**:
   - Registrar transacciones (entradas y salidas) para actualizar automáticamente el stock.

2. **Consultar Reportes**:
   - Consultar productos con bajo stock, resumen de transacciones o distribución por almacén.

3. **Escalabilidad**:
   - Integrar con interfaces gráficas para usuarios no técnicos o sistemas ERP.

---

## Contribuciones

Si deseas contribuir a este proyecto:
1. Haz un fork del repositorio.
2. Realiza tus cambios en una nueva rama.
3. Envía un pull request con una descripción detallada de las mejoras.

---

## Autor

Darwin Turpo Quispe - Desarrollador del Proyecto

Correo: dturpoqu@unsa.edu.pe

---

## Licencia

Este proyecto está bajo la licencia MIT. Puedes usar, modificar y distribuir libremente el código, siempre que se incluya la referencia al autor original.
