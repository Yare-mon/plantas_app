import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

// Titulo de una seccion con una linea debajo
class TituloSeccion extends StatelessWidget {
  final String texto;

  const TituloSeccion({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            texto.toUpperCase(),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              color: AppColors.primarioOscuro,
            ),
          ),
          const SizedBox(height: 6),
          Container(width: 40, height: 3, color: AppColors.acento),
        ],
      ),
    );
  }
}