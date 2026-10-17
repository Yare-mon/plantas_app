import 'package:flutter/material.dart';
import '../../core/app_colors.dart';
import '../widgets/boton_menu.dart';
import 'acerca_de_screen.dart';
import 'categorias_screen.dart';
import 'lista_plantas_screen.dart';

// Pantalla principal con el menu
class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // SingleChildScrollView evita el overflow en pantallas pequeñas
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              const CircleAvatar(
                radius: 36,
                backgroundColor: AppColors.primarioClaro,
                child:
                    Icon(Icons.eco, size: 40, color: AppColors.primarioOscuro),
              ),
              const SizedBox(height: 20),
              const Text(
                'Mi Jardín',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primarioOscuro,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Tu guía para cuidar plantas en casa.',
                style: TextStyle(fontSize: 16, color: AppColors.textoSuave),
              ),
              const SizedBox(height: 32),
              BotonMenu(
                icono: Icons.local_florist,
                titulo: 'Todas las plantas',
                subtitulo: 'Ver el catálogo completo',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListaPlantasScreen()),
                  );
                },
              ),
              BotonMenu(
                icono: Icons.grid_view,
                titulo: 'Categorías',
                subtitulo: 'Interior, suculentas, colgantes...',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CategoriasScreen()),
                  );
                },
              ),
              BotonMenu(
                icono: Icons.info_outline,
                titulo: 'Acerca de',
                subtitulo: 'Información del proyecto',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AcercaDeScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
