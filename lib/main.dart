import 'package:flutter/material.dart';
import 'core/app_theme.dart';
import 'presentation/screens/inicio_screen.dart';

void main() {
  runApp(const MiJardinApp());
}

class MiJardinApp extends StatelessWidget {
  const MiJardinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Jardín - Catálogo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.tema,
      home: const InicioScreen(),
    );
  }
}
