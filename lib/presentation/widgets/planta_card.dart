import 'package:flutter/material.dart';
import '../../core/app_colors.dart';
import '../../data/models/planta.dart';
import 'etiqueta_dificultad.dart';
import 'imagen_planta.dart';

// Tarjeta de una planta para las listas
class PlantaCard extends StatelessWidget {
  final Planta planta;
  final VoidCallback onTap;

  const PlantaCard({super.key, required this.planta, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.superficie,
      elevation: 0,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              ImagenPlanta(url: planta.imagen, alto: 70, ancho: 70, radio: 10),
              const SizedBox(width: 14),
              // Expanded evita que el texto se salga de la pantalla
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      planta.nombre,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      planta.nombreCientifico,
                      style: const TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                        color: AppColors.textoSuave,
                      ),
                    ),
                    const SizedBox(height: 6),
                    EtiquetaDificultad(dificultad: planta.dificultad),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
