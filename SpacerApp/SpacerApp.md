# SpacerApp
Primera app de iOS hecha en la Práctica 4, Guía 5.

## Funcionamiento
Un formulario simple que verifica si los campos están vacíos. Si hay un error, muestra una etiqueta de error oculta; si todo está bien, la esconde.

1. **Elementos visuales**: 2 `UITextField` (email, password), 1 `UIButton`, 1 `UILabel` (error).
2. **Lógica de Validación**: 
   - Al cargar la pantalla, el mensaje de error se oculta por defecto (`isHidden = true`).
   - Al presionar el botón de login, comprueba que los campos no estén vacíos.
   - Si falta algún dato, revela el label, le pone texto de error y color rojo.
   - Si los datos están completos, usa el mismo label para mostrar un éxito en color verde.