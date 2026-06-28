Feature: Respuesta instantánea de procesamiento de imagen

Escenario: Carga fluida en condiciones ideales
Given que el usuario toma la foto de su botella en un área con buena iluminación
When el usuario presiona el botón para procesar la imagen
Then la pantalla de la cámara pasa de inmediato a la pantalla de resultados sin que aparezcan pantallas de carga colgadas por varios segundos

Escenario: Respuesta ante imágenes complejas.
Given que el usuario fotografía un empaque con texturas mixtas y complejas
When la aplicación inicia la evaluación visual del elemento
Then el resultado aparece en la pantalla de manera suave y fluida.
