Feature: Alerta de límite de contenedor

Escenario: Alerta por contenedor lleno
Given que el personal de limpieza se encuentra realizando otras actividades
And la aplicación está cerrada
When un contenedor alcanza su máxima capacidad
Then el celular del personal de limpieza vibra y emite un sonido de alerta
And muestra un mensaje flotante que dice "Atención: El tacho de papel ‘A’ requiere vaciado inmediato"

Escenario: Muchos contenedores llenos.
Given que el personal de limpieza ya recibió una alerta sobre un contenedor lleno hace un momento
When se genere otro contenedor lleno
And el personal de limpieza aún no a vaciado el primer contenedor
Then la aplicación evita generar un nuevo sonido molesto
And espera a que el primer contenedor sea vaciado.
