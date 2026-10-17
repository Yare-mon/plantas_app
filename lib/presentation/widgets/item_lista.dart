import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

// Renglon con palomita para las listas de consejos
class ItemLista extends StatelessWidget {
  final String texto;

  const ItemLista({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle_outline, size: 20, color: AppColors.primario),
          const SizedBox(width: 10),
          // Expanded evita que el texto largo se salga de la pantalla
          Expanded(
            child: Text(texto, style: const TextStyle(fontSize: 15)),
          ),
        ],
      ),
    );
  }
}