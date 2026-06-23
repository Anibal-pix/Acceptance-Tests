Feature: Vista de nivel de llenado
Como personal de limpieza
Quiero ver en mi pantalla qué contenedores están llenos
Para ir a vaciarlos a tiempo

Scenario: Contenedor lleno cambia a estado de advertencia
Given que el contenedor asignado al plástico ha alcanzado el límite de su espacio disponible en el centro de acopio
When el personal de limpieza abre la pestaña de control en la app
Then la aplicación muestra el icono del tacho de plástico con un color rojo
And coloca un mensaje al lado que dice "Capacidad Máxima Superada"

Escenario: Revisión de contenedores vacíos.
Given que todos los depósitos del área residencial acaban de ser desocupados a tempranas horas de la mañana
When el personal de limpieza revisa la pestaña de control en la app
Then todos los iconos de los tachos de reciclaje se muestran de color verde
And muestran la palabra "Disponible" debajo de cada nombre.
