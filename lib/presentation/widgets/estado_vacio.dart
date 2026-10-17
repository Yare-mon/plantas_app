import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

// Se muestra cuando una busqueda no encuentra resultados
class EstadoVacio extends StatelessWidget {
  final String mensaje;

  const EstadoVacio({super.key, this.mensaje = 'No se encontraron plantas'});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.search_off, size: 48, color: AppColors.textoSuave),
            const SizedBox(height: 12),
            Text(
              mensaje,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: AppColors.textoSuave),
            ),
          ],
        ),
      ),
    );
  }
}
