import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:estados/models/Usuario.model.dart';
import 'package:meta/meta.dart';

part 'usuario_event.dart';
part 'usuario_state.dart';

class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {
  UsuarioBloc() : super(UsuarioState());

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async* {
    if (event is ActivarUsuario) {
      print(event.usuario);
      yield state.copyWith(usuario: event.usuario);
    }else if (event is CambiarEdad) {
      yield state.copyWith(
        usuario: state.usuario.copyWith(edad: event.edad)
      );
    }else if (event is AgregarProfesion) {
      yield state.copyWith(
        usuario: state.usuario.copyWith(
          profesiones: [
            ...state.usuario.profesiones,
            'Porfesion ${state.usuario.profesiones.length}'
          ]
        )
      );
    } else if (event is BorrarUsario) {
      yield state.borrarUsuario();
    }
  }
}
