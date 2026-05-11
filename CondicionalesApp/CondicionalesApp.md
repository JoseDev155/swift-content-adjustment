# CondicionalesApp
Quinta app de iOS hecha en la Práctica 4, Guía 5.

## Funcionamiento
Demuestra el uso de `ViewThatFits` en SwiftUI para crear layouts condicionales que se adaptan automáticamente al espacio disponible sin desbordarse.

1. **Elementos visuales**: Una lista de opciones ("Opción A", "Opción B", "Opción C") presentadas inicialmente en un `HStack`.
2. **Lógica de Layout**: 
   - `ViewThatFits` evalúa secuencialmente las vistas que se le proporcionan.
   - Primero intenta renderizar el `HStack` (horizontal).
   - Si el `HStack` no cabe en el ancho de la pantalla (por ejemplo, en un iPhone en vertical con fuentes grandes), `ViewThatFits` lo descarta y pasa a la siguiente opción: el `VStack` (vertical).
   - Esto permite cambiar de un diseño horizontal a uno vertical de forma automática y fluida.

## Notas de Compatibilidad (macOS 11 / iOS < 16)
`ViewThatFits` es una funcionalidad introducida en **iOS 16.0**. Si se trabaja con **macOS 11 (Big Sur)**, es posible que Xcode no reconozca este contenedor, ya que Big Sur solo soporta versiones de Xcode que llegan hasta iOS 15.

### Solución Equivalente
Para lograr un comportamiento similar en versiones anteriores, se puede utilizar `@Environment(\.horizontalSizeClass)`. Este enfoque detecta si el dispositivo está en un modo "compacto" (como un iPhone en vertical) o "regular" (como un iPad o iPhone en horizontal) para decidir el layout.

```swift
import SwiftUI

struct AdaptiveLayout: View {
    // Detectamos el tamaño de la pantalla (Compacto o Regular)
    @Environment(\.horizontalSizeClass) var sizeClass

    var body: some View {
        if sizeClass == .compact {
            // Diseño para pantallas estrechas
            VStack {
                Text("Opción A")
                Text("Opción B")
                Text("Opción C")
            }
        } else {
            // Diseño para pantallas anchas
            HStack {
                Text("Opción A")
                Text("Opción B")
                Text("Opción C")
            }
        }
    }
}
```
Este código es compatible con **iOS 13+** y funciona correctamente en entornos de desarrollo más antiguos.