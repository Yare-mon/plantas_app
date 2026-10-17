import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

// Etiqueta que cambia de color segun la dificultad
class EtiquetaDificultad extends StatelessWidget {
  final String dificultad;

  const EtiquetaDificultad({super.key, required this.dificultad});

  @override
  Widget build(BuildContext context) {
    Color colorFondo = AppColors.dificil;
    if (dificultad == 'Fácil') {
      colorFondo = AppColors.facil;
    } else if (dificultad == 'Media') {
      colorFondo = AppColors.media;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: colorFondo,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        dificultad,
        style: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.texto),
      ),
    );
  }
}
