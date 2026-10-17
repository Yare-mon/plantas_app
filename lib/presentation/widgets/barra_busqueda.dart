import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

// barra para escribir el nombre de la planta que se quiere buscar
class BarraBusqueda extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;

  const BarraBusqueda({
    super.key,
    this.hint = 'Buscar planta...',
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: const Icon(Icons.search, color: AppColors.primario),
          filled: true,
          fillColor: AppColors.superficie,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
