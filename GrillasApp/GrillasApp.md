# GrillasApp
Tercera app de iOS hecha en la Práctica 4, Guía 5.

## Funcionamiento
Demuestra el uso de `LazyVGrid` con columnas adaptativas en SwiftUI para crear colecciones que se ajustan automáticamente al ancho del dispositivo.

1. **Elementos visuales**: Un `ScrollView` que contiene un `LazyVGrid` con varios `RoundedRectangle` de color naranja.
2. **Lógica de Layout**: 
   - Se define una configuración de columnas usando `GridItem(.adaptive(minimum: 100))`.
   - El `LazyVGrid` coloca tantos elementos como quepan en una fila, respetando el ancho mínimo de 100px por columna.
   - En pantallas anchas (como un iPad), se mostrarán más columnas, mientras que en pantallas estrechas (como un iPhone), se mostrarán menos.