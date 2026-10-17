# Evidencia de los 5 conflictos de merge

En cada conflicto, las dos integrantes modificamos la misma línea de un archivo
en ramas distintas. Se unió primero un PR y el segundo quedó en conflicto.
El conflicto se resolvió en GitHub con "Resolve conflicts", analizando las dos
versiones, y después se comprobó que la app siguiera funcionando.

| # | Archivo | Cambio de Yare (rama -a) | Cambio de la compañera (rama -b) | Resolvió | Resultado final | PR |
|---|---|---|---|---|---|---|
| 1 | lib/core/app_colors.dart | Color primario 0xFF7A9E7E | Color primario 0xFF5F8466 | Compañera | Tono intermedio 0xFF6B8F71 | #12 |
| 2 | lib/main.dart | title 'Mi Jardín - Catálogo' | title 'Mi Jardín App' | Yare | 'Mi Jardín: Catálogo de plantas' | #13 |
| 3 | assets/data/plantas.json | Descripción Monstera + "Es originaria de México." | Descripción Monstera + "Puede crecer hasta 3 metros." | Compañera | Se dejaron las dos frases | #__ |
| 4 | lib/presentation/screens/inicio_screen.dart | 'Tu guía para cuidar plantas en casa.' | 'Descubre plantas fáciles de cuidar.' | Yare | 'Descubre plantas y aprende a cuidarlas en casa.' | #17 |
| 5 | lib/presentation/screens/acerca_de_screen.dart | 'Versión 1.0.0 - Octubre 2026' | 'Versión 1.1.0' | Compañera | 'Versión 1.1.0 - Octubre 2026' | #__ |

## Integrantes
- Yare: (nombre completo)
- Compañera: (nombre completo)