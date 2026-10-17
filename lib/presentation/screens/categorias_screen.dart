
import 'package:flutter/material.dart';
import '../../data/services/planta_service.dart';
import '../widgets/categoria_tile.dart';
import '../widgets/mensaje_cargando.dart';
import '../widgets/mensaje_error.dart';
import 'plantas_categoria_screen.dart';

// Pantalla con la cuadricula de categorias
class CategoriasScreen extends StatelessWidget {
  const CategoriasScreen({super.key});

  // Elige un icono para cada categoria
  IconData iconoDe(String categoria) {
    if (categoria == 'Interior') return Icons.chair_outlined;
    if (categoria == 'Suculentas') return Icons.spa_outlined;
    if (categoria == 'Colgantes') return Icons.water_drop_outlined;
    if (categoria == 'Con flor') return Icons.local_florist_outlined;
    return Icons.eco_outlined;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categorías')),
      body: FutureBuilder<List<String>>(
        future: PlantaService().cargarCategorias(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const MensajeCargando(texto: 'Cargando categorías...');
          }
          if (snapshot.hasError) {
            return const MensajeError();
          }

          final categorias = snapshot.data!;
          // Cuadricula de 2 columnas
          return GridView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: categorias.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              final categoria = categorias[index];
              return CategoriaTile(
                nombre: categoria,
                icono: iconoDe(categoria),
                onTap: () {
                  // Abrimos la pantalla de esa categoria
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlantasCategoriaScreen(categoria: categoria),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}