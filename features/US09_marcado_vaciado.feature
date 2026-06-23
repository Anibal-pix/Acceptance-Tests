Feature: Marcado de vaciado
Como personal de limpieza
Quiero marcar un contenedor como "Vaciado" en la aplicación
Para que la administración y mis compañeros sepan que ya limpié esa zona

Escenario: Confirmación de vaciado completa
Given que el personal de limpieza ha terminado de limpiar un contenedor
When el personal de limpieza presiona el botón que dice "Confirmar limpieza de contenedor" dentro de su perfil de la app
Then el icono del tacho de vidrio cambia automáticamente de rojo a verde en la pantalla
And el sistema guarda la hora exacta en la que se realizó la acción para el reporte de la gerencia

Escenario: Cancelación por error de pulsación
Given que el personal de limpieza pulsa por error el botón de "Confirmar limpieza de contenedor" de un contenedor que sigue lleno
When la aplicación le muestra una ventana de confirmación preguntando "¿Está seguro de cambiar el estado?" y el usuario presiona "No"
Then la aplicación cierra la advertencia y mantiene el contenedor en color rojo con su nivel de llenado intacto.
