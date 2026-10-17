import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

// Widget que muestra la imagen de una planta desde internet
class ImagenPlanta extends StatelessWidget {
  final String url;
  final double? alto;
  final double? ancho;
  final double radio;

  const ImagenPlanta({
    super.key,
    required this.url,
    this.alto,
    this.ancho,
    this.radio = 0,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radio),
      child: Image.network(
        url,
        height: alto,
        width: ancho,
        fit: BoxFit.cover,
        // Mientras carga la imagen
        loadingBuilder: (context, child, progreso) {
          if (progreso == null) return child;
          return Container(
            height: alto,
            width: ancho,
            color: AppColors.primarioClaro,
            child: const Center(child: CircularProgressIndicator()),
          );
        },
        // Si la imagen no carga se muestra un icono
        errorBuilder: (context, error, stackTrace) {
          return Container(
            height: alto,
            width: ancho,
            color: AppColors.primarioClaro,
            child: const Icon(Icons.local_florist, color: AppColors.primario),
          );
        },
      ),
    );
  }
}
