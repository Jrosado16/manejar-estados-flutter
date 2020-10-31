import 'package:meta/meta.dart';

class Usuario {
  String nombre;
  int edad;
  List<String> profesiones;

  Usuario({@required this.edad, this.nombre, this.profesiones})
      : assert(nombre != null);
}
