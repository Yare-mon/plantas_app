import 'package:flutter/material.dart';
import '../../data/models/planta.dart';
import '../../data/services/planta_service.dart';
import '../widgets/barra_busqueda.dart';
import '../widgets/estado_vacio.dart';
import '../widgets/lista_plantas.dart';
import '../widgets/mensaje_cargando.dart';
import '../widgets/mensaje_error.dart';

// pantalla para buscar plantas por su nombre
class BusquedaScreen extends StatefulWidget {
  const BusquedaScreen({super.key});

  @override
  State<BusquedaScreen> createState() => _BusquedaScreenState();
}

class _BusquedaScreenState extends State<BusquedaScreen> {
  // El JSON se lee una sola vez, al abrir la pantalla
  late Future<List<Planta>> _futurePlantas;

  // Texto que escribe el usuario en la barra
  String _texto = '';

  @override
  void initState() {
    super.initState();
    _futurePlantas = PlantaService().cargarPlantas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buscar plantas')),
      body: Column(
        children: [
          BarraBusqueda(
            onChanged: (valor) {
              // Cada vez que cambia el texto se vuelve a dibujar la lista
              setState(() {
                _texto = valor.toLowerCase();
              });
            },
          ),
          Expanded(
            child: FutureBuilder<List<Planta>>(
              future: _futurePlantas,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const MensajeCargando(texto: 'Cargando plantas...');
                }
                if (snapshot.hasError) {
                  return const MensajeError();
                }

                // Filtramos por nombre común o nombre científico
                final resultado = snapshot.data!.where((p) {
                  return p.nombre.toLowerCase().contains(_texto) ||
                      p.nombreCientifico.toLowerCase().contains(_texto);
                }).toList();

                if (resultado.isEmpty) {
                  return const EstadoVacio();
                }
                return ListaPlantas(plantas: resultado);
              },
            ),
          ),
        ],
      ),
    );
  }
}
