Feature: Privacidad y protección de datos
Como administrador
Quiero que la información del condominio esté protegida
Para que personas ajenas al edificio no puedan ver los nombres ni datos de mis residentes

Escenario: Intento de ingreso forzoso desde un teléfono externo.
Given que una persona ajena al condominio descarga la aplicación en su celular e intenta ingresar a una cuenta con datos inválidos
When la aplicación inicia su proceso de validación
And determina que los datos son inválidos
Then el sistema deniega el acceso por completo a la app
And muestra una pantalla con un mensaje que dice "Solo para residentes autorizados".

Escenario: Ocultamiento de datos privados en el ranking público
Given que un usuario autorizado está revisando la tabla de posiciones general de reciclaje de su condominio
When observa los detalles de las filas de los otros participantes del ranking
Then la aplicación muestra únicamente identificadores generales como el número de departamento y los puntos ganados, manteniendo en privado los nombres, apellidos o números telefónicos de los propietarios de ese departamento
