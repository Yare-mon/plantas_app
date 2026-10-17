class Planta {
  final int id;
  final String nombre;
  final String nombreCientifico;
  final String categoria;
  final String imagen;
  final String descripcion;
  final String dificultad;
  final String luz;
  final String riego;
  final bool aptaMascotas;
  final List<String> cuidados;

  Planta({
    required this.id,
    required this.nombre,
    required this.nombreCientifico,
    required this.categoria,
    required this.imagen,
    required this.descripcion,
    required this.dificultad,
    required this.luz,
    required this.riego,
    required this.aptaMascotas,
    required this.cuidados,
  });

  // Convierte el mapa del JSON en un objeto Planta
  factory Planta.fromJson(Map<String, dynamic> json) {
    return Planta(
      id: json['id'],
      nombre: json['nombre'],
      nombreCientifico: json['nombreCientifico'],
      categoria: json['categoria'],
      imagen: json['imagen'],
      descripcion: json['descripcion'],
      dificultad: json['dificultad'],
      luz: json['luz'],
      riego: json['riego'],
      aptaMascotas: json['aptaMascotas'],
      cuidados: List<String>.from(json['cuidados']),
    );
  }
}
