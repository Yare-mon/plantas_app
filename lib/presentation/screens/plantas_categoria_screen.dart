import 'package:flutter/material.dart';
import '../../data/models/planta.dart';
import '../../data/services/planta_service.dart';
import '../widgets/lista_plantas.dart';
import '../widgets/mensaje_cargando.dart';
import '../widgets/mensaje_error.dart';

// Muestra solo las plantas de una categoria
// Recibe el nombre de la categoria por el constructor
class PlantasCategoriaScreen extends StatelessWidget {
  final String categoria;

  const PlantasCategoriaScreen({super.key, required this.categoria});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoria)),
      body: FutureBuilder<List<Planta>>(
        future: PlantaService().cargarPorCategoria(categoria),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const MensajeCargando(texto: 'Cargando plantas...');
          }
          if (snapshot.hasError) {
            return const MensajeError();
          }

          final plantas = snapshot.data!;
          if (plantas.isEmpty) {
            return const MensajeError(mensaje: 'No hay plantas en esta categoría');
          }
          return ListaPlantas(plantas: plantas);
        },
      ),
    );
  }
}