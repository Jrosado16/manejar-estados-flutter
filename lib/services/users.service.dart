import 'package:estados/models/Usuario.model.dart';
import 'package:flutter/cupertino.dart';

class UserProvider with ChangeNotifier {
  Usuario _usuario;

  Usuario get usuario => _usuario;
  bool get existeUsuario => _usuario != null ? true : false;

  set addUser(Usuario user) {
    _usuario = user;
    notifyListeners();
  }

  set addEdad(int edad) {
    _usuario.edad = edad;
    notifyListeners();
  }

  void addProfesion() {
    _usuario.profesiones.add('Profesion ${_usuario.profesiones.length+1}');
    notifyListeners();
  }
}

// final usuarioProvider = new UserProvider();
