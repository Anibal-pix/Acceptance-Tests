Feature: Alerta de rechazo

Escenario: Alerta visual de rechazo
Given que el usuario intenta escanear una caja de pizza empapada de aceite y grasa
When la aplicación procesa la imagen del residuo
Then la aplicación muestra un símbolo de alerta en la pantalla
And la aplicación muestra el texto "Residuo rechazado porque este material debe ir al tacho de basura común debido a la contaminación"

Escenario: Intento de un nuevo escaneo para evitar la alerta.
Given que la aplicación ha mostrado una alerta de residuo rechazado en la pantalla
When el usuario presiona el botón para omitir la alerta e intentar escanear el mismo residuo sucio otra vez
Then la aplicación mantiene bloqueado el acceso al depósito y repite la advertencia.
