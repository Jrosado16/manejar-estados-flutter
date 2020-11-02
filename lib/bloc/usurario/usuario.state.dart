part of 'usuario.cubit.dart';

@immutable
abstract class UsuarioState {}

class UsuarioInitial extends UsuarioState {
  final usuarioExiste = false;
}

class UsuarioActivo extends UsuarioState {
  final usuarioExiste = true;
  final Usuario usuario;

  UsuarioActivo(this.usuario);
}
