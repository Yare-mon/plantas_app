import 'package:flutter/material.dart';
import '../../core/app_colors.dart';
import '../widgets/item_lista.dart';
import '../widgets/titulo_seccion.dart';

// Pantalla con la informacion del proyecto
class AcercaDeScreen extends StatelessWidget {
  const AcercaDeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Acerca de')),
      // SingleChildScrollView permite bajar si la pantalla es pequeña
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: AppColors.primarioClaro,
                child: Icon(Icons.eco, size: 44, color: AppColors.primarioOscuro),
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'Mi Jardín',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primarioOscuro,
                ),
              ),
            ),
            const Center(
              child: Text(
                'Versión 1.0.0',
                style: TextStyle(color: AppColors.textoSuave),
              ),
            ),

            const TituloSeccion(texto: 'Proyecto'),
            const Text(
              'Catálogo de plantas de interior hecho en Flutter para la Unidad 3 '
              'de Desarrollo de Aplicaciones Móviles. Los datos se leen de un '
              'archivo JSON local.',
              style: TextStyle(fontSize: 15, height: 1.5),
            ),

            const TituloSeccion(texto: 'Equipo'),
            const ItemLista(texto: 'retzy Montesinos'),
            const ItemLista(texto: 'Elisa Sánchez Coronel'),

            const TituloSeccion(texto: 'Tecnologías'),
            const ItemLista(texto: 'Flutter y Dart'),
            const ItemLista(texto: 'JSON local con FutureBuilder'),
            const ItemLista(texto: 'Git y GitHub con Pull Requests'),
          ],
        ),
      ),
    );
  }
}