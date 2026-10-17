import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

// Indica si la planta es segura para mascotas
class BadgeMascotas extends StatelessWidget {
  final bool aptaMascotas;

  const BadgeMascotas({super.key, required this.aptaMascotas});

  @override
  Widget build(BuildContext context) {
    String texto = 'Tóxica para mascotas';
    IconData icono = Icons.warning_amber;
    Color color = AppColors.acento;

    if (aptaMascotas) {
      texto = 'Apta para mascotas';
      icono = Icons.pets;
      color = AppColors.primario;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icono, size: 14, color: color),
          const SizedBox(width: 6),
          Text(texto, style: TextStyle(fontSize: 12, color: color)),
        ],
      ),
    );
  }
}
