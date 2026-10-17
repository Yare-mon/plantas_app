# Mi Jardín 

Catálogo de plantas de interior hecho en Flutter.
Proyecto de la Unidad 3 – Desarrollo de Aplicaciones Móviles.
Instituto Tecnológico de Tlaxiaco – Ingeniería en Sistemas Computacionales – Grupo 7 US.

## Integrantes
| Nombre | Usuario de GitHub |
|---|---|
| Yaretzy Montesinos López | Yare-mon |
| Elisa Sánchez Coronel | elisa1223 |

**Asesor:** Josue Israel Vasquéz Martínez

## ¿Qué hace la app?
Muestra un catálogo de 12 plantas leídas de un archivo JSON local
(`assets/data/plantas.json`). Se pueden ver todas las plantas, buscarlas por
nombre, filtrarlas por categoría y abrir el detalle de cada una con sus
cuidados, su nivel de dificultad y si es apta para mascotas.

## Arquitectura por capas
```
lib/
├── main.dart                → arranque de la app
├── core/                    → CAPA CORE: colores y tema
│   ├── app_colors.dart
│   └── app_theme.dart
├── data/                    → CAPA DE DATOS
│   ├── models/              → modelo Planta con factory fromJson
│   └── services/            → PlantaService, lee el JSON
└── presentation/            → CAPA DE PRESENTACIÓN
    ├── screens/             → 7 pantallas
    └── widgets/             → 14 widgets reutilizables
```

## Pantallas (7)
1. Inicio
2. Todas las plantas
3. Buscar plantas
4. Categorías
5. Plantas por categoría
6. Detalle de planta
7. Acerca de

La navegación se hace con `Navigator.push` y `Navigator.pop`.

## Widgets reutilizables (14)
| Widget | Para qué sirve |
|---|---|
| ImagenPlanta | Imagen remota con indicador de carga y error |
| EtiquetaDificultad | Etiqueta de color según la dificultad |
| BadgeMascotas | Indica si la planta es apta para mascotas |
| BotonMenu | Botón del menú de inicio |
| CategoriaTile | Cuadro de una categoría |
| TituloSeccion | Título de sección con línea de acento |
| ItemLista | Renglón con palomita para consejos |
| FilaCuidado | Fila con ícono, título y valor |
| MensajeCargando | Indicador mientras carga el FutureBuilder |
| MensajeError | Mensaje si falla la carga |
| PlantaCard | Tarjeta de una planta en las listas |
| ListaPlantas | Lista reutilizable que abre el detalle |
| BarraBusqueda | Campo de texto para buscar plantas |
| EstadoVacio | Mensaje cuando una búsqueda no tiene resultados |

## Datos (JSON)
- Archivo: `assets/data/plantas.json`, registrado en `pubspec.yaml`
- 12 plantas en 4 categorías: Interior, Suculentas, Colgantes y Con flor
- Se lee con `rootBundle.loadString` y `jsonDecode`
- Se convierte en objetos con `Planta.fromJson`
- Se muestra con `FutureBuilder` (estados de carga, error y datos)

## Flujo de trabajo con Git
- `main`: versión final y estable (protegida)
- `develop`: rama de integración (protegida)
- `feature/...`: una rama por funcionalidad, unida con Pull Request aprobado
- Cada Pull Request necesita la aprobación de la otra integrante

### Ramas de trabajo
| Rama | Responsable |
|---|---|
| feature/datos | Yaretzy Montesinos López |
| feature/tema | Elisa Sánchez Coronel |
| feature/widgets-visuales | Yaretzy Montesinos López |
| feature/widgets-texto | Elisa Sánchez Coronel |
| feature/pantalla-detalle | Yaretzy Montesinos López |
| feature/pantalla-acerca-de | Elisa Sánchez Coronel |
| feature/pantalla-lista | Yaretzy Montesinos López |
| feature/pantallas-categorias | Elisa Sánchez Coronel |
| feature/pantalla-inicio | Elisa Sánchez Coronel |
| docs/readme | Yaretzy Montesinos López |
| docs/conflictos | Yaretzy Montesinos López |
| feature/busqueda | Yaretzy Montesinos López |

### Conflictos de merge
Se provocaron y resolvieron 5 conflictos. El detalle está en
[CONFLICTOS.md](CONFLICTOS.md).

## Cómo ejecutar
1. Clonar el repositorio:
```
   git clone https://github.com/Yare-mon/plantas_app.git
```
2. Abrir la carpeta en VS Code
3. Descargar paquetes:
```
   flutter pub get
```
4. Elegir un emulador o teléfono y presionar **F5**

## Tecnologías
- Flutter y Dart
- Visual Studio Code
- Git y GitHub
- Android Emulator (Pixel 4)