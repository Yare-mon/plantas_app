import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

// Se muestra mientras se cargan los datos del JSON
class MensajeCargando extends StatelessWidget {
  final String texto;

  const MensajeCargando({super.key, this.texto = 'Cargando...'});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(color: AppColors.primario),
          const SizedBox(height: 16),
          Text(texto, style: const TextStyle(color: AppColors.textoSuave)),
        ],
      ),
    );
  }
}