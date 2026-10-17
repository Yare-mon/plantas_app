import 'package:flutter/material.dart';
import '../../core/app_colors.dart';
import '../../data/models/planta.dart';
import '../widgets/badge_mascotas.dart';
import '../widgets/etiqueta_dificultad.dart';
import '../widgets/fila_cuidado.dart';
import '../widgets/imagen_planta.dart';
import '../widgets/item_lista.dart';
import '../widgets/titulo_seccion.dart';

// : recibe la planta completa por el constructor
class DetallePlantaScreen extends StatelessWidget {
  final Planta planta;

  const DetallePlantaScreen({super.key, required this.planta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // CustomScrollView permite que la imagen se encoja al hacer scroll
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            backgroundColor: AppColors.primarioOscuro,
            foregroundColor: Colors.white,
            title: Text(planta.nombre),
            flexibleSpace: FlexibleSpaceBar(
              background: ImagenPlanta(url: planta.imagen),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    planta.nombre,
                    style: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    planta.nombreCientifico,
                    style: const TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: AppColors.textoSuave,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Wrap pasa las etiquetas a otra linea si no caben
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      EtiquetaDificultad(dificultad: planta.dificultad),
                      BadgeMascotas(aptaMascotas: planta.aptaMascotas),
                    ],
                  ),

                  const TituloSeccion(texto: 'Descripción'),
                  Text(planta.descripcion,
                      style: const TextStyle(fontSize: 15, height: 1.5)),

                  const TituloSeccion(texto: 'Cuidados básicos'),
                  FilaCuidado(
                      icono: Icons.wb_sunny_outlined,
                      titulo: 'Luz',
                      valor: planta.luz),
                  FilaCuidado(
                      icono: Icons.water_drop_outlined,
                      titulo: 'Riego',
                      valor: planta.riego),
                  FilaCuidado(
                      icono: Icons.category_outlined,
                      titulo: 'Categoría',
                      valor: planta.categoria),

                  const TituloSeccion(texto: 'Consejos'),
                  // Convertimos cada consejo de la lista en un widget ItemLista
                  ...planta.cuidados
                      .map((consejo) => ItemLista(texto: consejo)),

                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
