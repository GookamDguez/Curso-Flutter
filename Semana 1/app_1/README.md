# ENUNCIADO:
Crea una aplicación llamada “Mi Perfil App” con las siguientes características:

## Pantalla Home

    •	Debe mostrar tu nombre, foto (puede ser de red o placeholder) y un botón que diga “Ver detalles”.
    •	Usa Column y Row para organizar el contenido.
    •	El diseño debe ser responsivo:
    •	En móvil: disposición vertical.
    •	En tablet (ancho >600px): disposición horizontal.

## Pantalla Detalles
     Debe mostrar información adicional (ej. descripción corta, correo, hobbies).
     •	Aplica un tema personalizado (colores y tipografía con ThemeData y GoogleFonts).
     •	Agrega un botón para volver a Home.
     •	Contador interactivo

## *Contador interactivo*

      •	En la pantalla de detalles, agrega un contador con botones + y – usando setState.
      •	El valor debe actualizarse en tiempo real en la UI.
      
## Requisitos técnicos
    •	Usar GoRouter para la navegación entre Home y Detalles.
    •	Usar MediaQuery o LayoutBuilder para adaptar el layout.
    •	Aplicar un ThemeData personalizado con Material 3.
    •	Implementar un StatefulWidget con setState para el contador.

