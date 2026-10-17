import 'package:flutter/material.dart';
import '../../data/models/planta.dart';
import '../screens/detalle_planta_screen.dart';
import 'planta_card.dart';

// Lista de plantas que se usa en varias pantallas
class ListaPlantas extends StatelessWidget {
  final List<Planta> plantas;

  const ListaPlantas({super.key, required this.plantas});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: plantas.length,
      itemBuilder: (context, index) {
        final planta = plantas[index];
        return PlantaCard(
          planta: planta,
          onTap: () {
            // Abrimos el detalle mandando la planta completa
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetallePlantaScreen(planta: planta),
              ),
            );
          },
        );
      },
    );
  }
}
