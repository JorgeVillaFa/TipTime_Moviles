# app_forage

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

<!-- Entrega -->

Descripción

Se requiere hacer una aplicación con diseño basado en lineamientos de material design, la cual aproveche de manera óptima el espacio en pantalla, además de mostrar al usuario una interfaz con la cual pueda interactuar y navegar dentro de la aplicación.

App – Forage
Listado de temas plasmados
Interfaz de Usuario (UI): El diseño y la disposición de la interfaz de usuario son aspectos importantes. Esto incluye el uso de botones, cuadros de texto, casillas de verificación, barras de navegación y el estilo general de la aplicación.

Navegación: La aplicación incluye navegación entre múltiples pantallas, como la página principal (HomePage), la página de entrada de datos (TextInputs) y la página de detalles de los forrajes (ListForage).

Proveedor de Datos (Provider): Se utiliza el patrón de proveedor para administrar y compartir datos en toda la aplicación. Esto incluye el uso de ChangeNotifierProvider para administrar los datos de forraje.

Edición y Eliminación de Datos: Los usuarios pueden editar y eliminar datos ingresados previamente. Estas acciones afectan la lista de forrajes guardados.

Lista de Elementos: La aplicación muestra una lista de elementos (forrajes) en la página principal (HomePage). Cada elemento de la lista muestra información relevante, como nombre, ubicación y estado.

Guardado de Datos: Los datos ingresados se guardan en una lista y están disponibles para su visualización posterior en la página principal.

Control de Estado: La aplicación controla el estado de elementos, como la casilla de verificación de "Actualmente en temporada", para mostrar si un forraje está activo o inactivo.

Navegación entre Pantallas: Los usuarios pueden navegar entre diferentes pantallas de la aplicación, incluyendo la página de inicio y las páginas de detalles y edición.

Lo que me costó más trabajo
	La aplicación correcta de providers, me costó bastante tiempo entender que el change notifier provider tenía que encapsular todo el árbol de widgets y esto encapsulación llamarla a cada archivo correspondiente, también las funciones que provider posee para hacer todo lo debido para poder hacer las llamadas entradas de texto por ejemplo, después de mucho experimentar y con muchas ayudas de visual studio puede notar una estructura que era muy repetitiva y literal al contexto que estaba buscando hacer, todo esto me costó una gran cantidad de tiempo.

Lo que aprendí
- el uso de provider e interacciones
- que hay que inicializar bien los datos
- navigators, read y watch
  
Link video
https://youtu.be/IpE2gB0zafE
