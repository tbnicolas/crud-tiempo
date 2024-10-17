# Manual de Usuario del Programa de Listado y Selección de Fechas

## Descripción General

Este programa tiene como objetivo listar y seleccionar distintos tipos de fechas. Las fechas pueden provenir de dos fuentes de datos diferentes:
1. **Fuente de datos local**: Un conjunto de fechas almacenadas localmente en el dispositivo.
2. **Fuente de datos remota**: Un servicio API construido en Python que transforma los datos según el contrato establecido entre el frontend y el backend.

El programa decide automáticamente de qué fuente obtener los datos, basándose en la disponibilidad de conexión a internet. Si hay conectividad, los datos se obtendrán del endpoint remoto; si no, se utilizarán los datos locales.

El endpoint remoto utilizado es: [https://fierce-journey-53566-55de4c09a9c7.herokuapp.com/zonas_horarias](https://fierce-journey-53566-55de4c09a9c7.herokuapp.com/zonas_horarias)



## Funcionalidades Principales

### 1. **Listar Fechas desde la Fuente de Datos**
   - **Fuente Local**: Si no hay conexión a internet, las fechas se obtendrán desde la fuente de datos local.
   - **Fuente Remota (API Python)**: Si hay conexión a internet, el programa consumirá el endpoint mencionado y mostrará las fechas obtenidas de la API.

### 2. **Selección de Fechas**
   - Una vez que las fechas han sido listadas desde la fuente seleccionada, el usuario puede seleccionar una fecha específica. Esta funcionalidad permite al usuario elegir la fecha más conveniente para el propósito de la aplicación.

### 3. **Manejo de Conectividad**
   - El programa realiza una verificación de conectividad para decidir qué fuente de datos usar. Si se detecta conectividad, el programa utilizará el endpoint remoto; de lo contrario, recurrirá a los datos locales.

## Pruebas Unitarias

El proyecto incluye pruebas unitarias para validar la entidad del modelo que maneja las fechas. Las pruebas están diseñadas para asegurar que la transformación de los datos recibidos del JSON hacia el modelo sea correcta.

### Ejecución de las Pruebas

Para ejecutar las pruebas unitarias, sigue estos pasos:

1. Abre una terminal en el directorio del proyecto.
2. Ejecuta el siguiente comando:

   ```bash
   flutter test test/model_test.dart
