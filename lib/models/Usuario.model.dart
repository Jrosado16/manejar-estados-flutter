class Usuario {
  String nombre;
  int edad;
  List<String> profesiones;

  Usuario({this.edad, this.nombre, this.profesiones});

  Usuario copyWith({nombre, edad, profesiones}) {
    return Usuario(
      nombre: nombre ?? this.nombre,
      edad  : edad   ?? this.edad,
      profesiones: profesiones ?? this.profesiones
    );
  }
}
