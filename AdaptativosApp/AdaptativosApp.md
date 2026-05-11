# AdaptativosApp
Segunda app de iOS hecha en la Práctica 4, Guía 5.

## Funcionamiento
Demuestra el uso de `GeometryReader` en SwiftUI para crear elementos que ocupan un porcentaje específico del espacio disponible.

1. **Elementos visuales**: Un `Rectangle` de color azul y un componente `Text` dentro de un `VStack`, todo contenido en un `GeometryReader`.
2. **Lógica de Layout**: 
   - El `GeometryReader` proporciona las dimensiones exactas del contenedor padre.
   - El ancho del `Rectangle` se calcula dinámicamente multiplicando el ancho total disponible (`geometry.size.width`) por 0.8.
   - Esto garantiza que el rectángulo siempre ocupe el 80% del ancho de la pantalla, sin importar el dispositivo (iPhone o iPad).