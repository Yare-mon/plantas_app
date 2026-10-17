import 'package:flutter/material.dart';
import '../../data/models/planta.dart';
import '../../data/services/planta_service.dart';
import '../widgets/lista_plantas.dart';
import '../widgets/mensaje_cargando.dart';
import '../widgets/mensaje_error.dart';

// Pantalla que muestra todas las plantas del JSON
class ListaPlantasScreen extends StatelessWidget {
  const ListaPlantasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todas las plantas')),
      body: FutureBuilder<List<Planta>>(
        future: PlantaService().cargarPlantas(),
        builder: (context, snapshot) {
          // 1. Mientras carga
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const MensajeCargando(texto: 'Cargando plantas...');
          }
          // 2. Si hubo error
          if (snapshot.hasError) {
            return const MensajeError();
          }
          // 3. Cuando ya hay datos
          final plantas = snapshot.data!;
          return ListaPlantas(plantas: plantas);
        },
      ),
    );
  }
}
