import 'package:flutter/material.dart';
import 'core/app_theme.dart';

void main() {
  runApp(const MiJardinApp());
}

class MiJardinApp extends StatelessWidget {
  const MiJardinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Jardín',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.tema,
      // Pantalla temporal mientras se hacen las demás
      home: const Scaffold(
        body: Center(child: Text('Mi Jardín')),
      ),
    );
  }
}