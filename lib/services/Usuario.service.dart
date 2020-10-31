import 'dart:async';

import 'package:estados/models/Usuario.model.dart';

class _UsuarioService {
  Usuario _usuario;
  Usuario get usuario => _usuario;

  bool get existeUsuario => this._usuario != null ? true : false;

  StreamController<Usuario> _usaruarioStream =
      StreamController<Usuario>.broadcast();

  Stream<Usuario> get usuarioStream => _usaruarioStream.stream;

  void cargarUsuario(Usuario user) {
    this._usuario = user;
    _usaruarioStream.add(user);
  }

  void cambiarEdad(int edad) {
    this._usuario.edad = edad;
    _usaruarioStream.add(this._usuario);
  }

  dispose() {
    _usaruarioStream?.close();
  }
}

final usarioService = _UsuarioService();
