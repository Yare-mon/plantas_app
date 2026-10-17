import 'package:flutter/material.dart';
import 'app_colors.dart';

// Estilo general de la app
class AppTheme {
  static ThemeData get tema {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primario),
      scaffoldBackgroundColor: AppColors.fondo,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.fondo,
        foregroundColor: AppColors.primarioOscuro,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}