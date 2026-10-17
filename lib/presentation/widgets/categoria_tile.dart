import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

// Cuadro de una categoria
class CategoriaTile extends StatelessWidget {
  final String nombre;
  final IconData icono;
  final VoidCallback onTap;

  const CategoriaTile({
    super.key,
    required this.nombre,
    required this.icono,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.superficie,
      elevation: 0,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: AppColors.primarioClaro,
              child: Icon(icono, size: 28, color: AppColors.primarioOscuro),
            ),
            const SizedBox(height: 10),
            Text(
              nombre,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
