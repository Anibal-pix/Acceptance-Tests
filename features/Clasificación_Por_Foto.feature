Feature: Clasificación por foto
  Como residente
  Quiero tomar una foto de mi residuo desde la aplicación
  Para que el sistema me indique si es papel, plástico o vidrio
  
  Scenario: Reconocimiento exitoso de material
    Given que el usuario se encuentra en el apartado de escaneo de la aplicación
    And la cámara está activa
    When el usuario enfoca una botella transparente y presiona el botón de captura
    Then la aplicación muestra un cuadro informativo que indica "El material detectado es plástico"

  Scenario: Imagen borrosa o incompleta
    Given que el usuario se encuentra en el apartado de escaneo de la aplicación
    And la cámara está activa
    When el usuario mueve bruscamente el teléfono al tomar la fotografía
    Then la aplicación muestra un aviso en pantalla indicando "Imagen poco clara, intente tomar la foto nuevamente sin mover el celular"
