# CRUD de Autos en Java con Servlet

Este proyecto implementa un simple CRUD (Crear, Leer, Actualizar, Eliminar) de autos en Java utilizando Servlets. El CRUD permite gestionar la información de autos, almacenando los datos en memoria.

### **Select Language:**
- [Español (Spanish)](README-es.md)
- [English](README.md)

## Resultados
### Inicio
![Alt text](docs/home.PNG)
### Agregar auto
![Alt text](docs/add%20car.PNG)
### Editar auto
![Alt text](docs/edit.PNG)
### Buscar Auto
![Alt text](docs/details.PNG)

## Estructura del Proyecto

El proyecto consta de varias clases y archivos que trabajan juntos para lograr la funcionalidad del CRUD.

### Clases Java

1. **AutoServletController (servletController.java)**
    - Controla las solicitudes HTTP, maneja la lógica del CRUD y redirige a las páginas correspondientes.
    - Métodos notables: `doGet()`, `doPost()`, `init()`, `destroy()`.

2. **AutoDaoImplement (AutoDaoImplement.java)**
    - Implementa la interfaz `IAutoDAO` y maneja el almacenamiento y manipulación de datos de autos en memoria.
    - Métodos notables: `add()`, `update()`, `get()`, `getAuto()`, `delete()`.

3. **Auto (Auto.java)**
    - Representa la entidad Auto con atributos como marca, modelo, placa, cilindraje, año y consumo.
    - Proporciona getters, setters y un método `toString()` para facilitar la visualización.

4. **MemoryStore (MemoryStore.java)**
    - Almacena los autos en memoria utilizando un HashMap.
    - Proporciona métodos para agregar, actualizar, obtener, listar y eliminar autos.

### Archivos JSP (JavaServer Pages)

1. **index.jsp**
    - Muestra una lista de autos con opciones para editar o eliminar.

2. **crear.jsp**
    - Formulario para agregar nuevos autos.

3. **actualizar.jsp**
    - Formulario para editar la información de un auto existente.

## Uso del Proyecto

1. **Configuración del Entorno**
    - Asegúrate de tener un entorno Java y un servidor web configurado (por ejemplo, Apache Tomcat).

2. **Compilación y Despliegue**
    - Compila las clases Java y empaqueta el proyecto en un archivo WAR.
    - Despliega el archivo WAR en tu servidor web.

3. **Acceso a la Aplicación**
    - Abre un navegador web y accede a la URL de la aplicación.

4. **Interactúa con el CRUD**
    - Utiliza la interfaz web para crear, leer, actualizar y eliminar autos.

## Tecnologías Utilizadas

- Java Servlets
- JSP (JavaServer Pages)
- HTML, Bootstrap (para la interfaz de usuario)

## Notas Adicionales

- La aplicación utiliza un almacenamiento en memoria (`MemoryStore`) para simplificar la implementación. En un entorno de producción real, se recomienda utilizar una base de datos.

- El proyecto utiliza el patrón de diseño MVC (Modelo-Vista-Controlador) básico para separar las preocupaciones y mejorar la mantenibilidad del código.

- La interfaz de usuario utiliza Bootstrap para un diseño más atractivo y responsivo.

**¡Disfruta trabajando con el CRUD de Autos en Java con Servlet!**
