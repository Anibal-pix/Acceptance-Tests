Feature: Configuración de tamaño de letras

Escenario: Incremento de tamaño de las letras en el menú de ajustes
Given que una usuaria jubilada ingresa al menú para ajustar el tamaño de las letras
When selecciona la opción que indica "Letra grande"
Then todas las palabras de los títulos, botones, guías, etc. aumentan de tamaño de forma inmediata en la pantalla de su celular
And las oraciones no se amontonan, generando una comodidad visual

Escenario: Legibilidad en el escáner.
Given que el tamaño de letras de la aplicación ha sido ajustado a un tamaño grande por el usuario
When el usuario se dirige a usar la cámara para clasificar un residuo
Then los mensajes de la IA se muestran en letras grandes para una fácil lectura.
