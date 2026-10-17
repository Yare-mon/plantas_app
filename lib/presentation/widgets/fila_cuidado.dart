import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

// Fila con icono, titulo y valor. Ejemplo: Riego - 1 vez por semana
class FilaCuidado extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final String valor;

  const FilaCuidado({
    super.key,
    required this.icono,
    required this.titulo,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primarioClaro,
            child: Icon(icono, size: 20, color: AppColors.primarioOscuro),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titulo, style: const TextStyle(fontSize: 12, color: AppColors.textoSuave)),
                Text(valor, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}