import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/planta.dart';

// a clase se encarga de leer el archivo JSON
class PlantaService {
  // Lee el JSON y regresa la lista de plantas
  Future<List<Planta>> cargarPlantas() async {
    final String respuesta =
        await rootBundle.loadString('assets/data/plantas.json');
    final List<dynamic> datos = jsonDecode(respuesta);
    return datos.map((json) => Planta.fromJson(json)).toList();
  }

  // egresa solo las plantas de una categoría
  Future<List<Planta>> cargarPorCategoria(String categoria) async {
    final plantas = await cargarPlantas();
    return plantas.where((p) => p.categoria == categoria).toList();
  }

  // gresa las categorías sin repetir (toSet quita los repetidos)
  Future<List<String>> cargarCategorias() async {
    final plantas = await cargarPlantas();
    return plantas.map((p) => p.categoria).toSet().toList();
  }
}
