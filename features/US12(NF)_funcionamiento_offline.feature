Feature: Sincronización en modo offline

Escenario: Marcado de actividades sin conectividad
Given que el personal de limpieza cuenta con una mala señal de internet
And se encuentra vaciando un contenedor
When presiona el botón para marcar una tarea de limpieza como terminada
Then la aplicación responde de manera normal y sin contratiempos
And el sistema almacena a nivel local todas sus acciones realizadas para luego actualizarlas en el sistema al tener mejor internet

Escenario: Actualización de datos al volver a tener buena señal de internet.
Given que el personal de limpieza ha realizado varias acciones en la app estando con una señal de internet baja
When vuelva a tener una buena señal de internet
Then la aplicación procesa las tareas realizadas en segundo plano sin interrumpir el uso de la app.
