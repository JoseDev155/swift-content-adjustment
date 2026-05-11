# AjusteTextoApp
Tercera app de iOS hecha en la Práctica 4, Guía 5.

## Funcionamiento
Demuestra el uso de `minimumScaleFactor` en SwiftUI para ajustar automáticamente el tamaño de la fuente cuando el texto es demasiado largo para el espacio disponible.

1. **Elementos visuales**: Un componente `Text` con un título largo.
2. **Lógica de Layout**: 
   - Se utiliza `.lineLimit(1)` para restringir el texto a una sola línea.
   - El modificador `.minimumScaleFactor(0.5)` permite que SwiftUI reduzca el tamaño de la fuente hasta un 50% de su tamaño original si es necesario para que el texto quepa en la pantalla.
   - Esto evita que el texto se corte con puntos suspensivos en dispositivos más pequeños como el iPhone SE.