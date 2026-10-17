import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

// Se muestra si hubo un error al cargar los datos
class MensajeError extends StatelessWidget {
  final String mensaje;

  const MensajeError({super.key, this.mensaje = 'Error al cargar los datos'});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 48, color: AppColors.acento),
            const SizedBox(height: 12),
            Text(mensaje, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
