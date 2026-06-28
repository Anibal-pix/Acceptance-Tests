Feature: Validación de limpieza

Escenario: Envase limpio aprobado
Given que el usuario ha tomado una foto a una lata de refresco
And esta está limpia
When la aplicación analiza la superficie del objeto
Then la aplicación muestra un mensaje que dice "Estado: Limpio y apto para reciclaje"

Escenario: Envase sucio detectado
Given que el usuario ha tomado una foto a un envase
And este tiene restos visibles de comida
When la aplicación procesa los detalles de la imagen
Then la aplicación muestra un mensaje de advertencia indicando "Estado: Sucio. Por favor enjuague el envase antes de clasificarlo"
