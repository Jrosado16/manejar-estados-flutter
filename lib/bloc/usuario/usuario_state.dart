part of 'usuario_bloc.dart';

class UsuarioState {
  final bool usuarioExiste;
  final Usuario usuario;

  UsuarioState({Usuario user})
      : usuario = user ?? null,
        usuarioExiste = user != null ? true : false;

  UsuarioState copyWith({Usuario usuario}) =>
      UsuarioState(user: usuario ?? this.usuario);

  UsuarioState borrarUsuario() => UsuarioState();
}
