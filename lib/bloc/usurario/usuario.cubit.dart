


import 'package:estados/models/Usuario.model.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'usuario.state.dart';

class UsuarioCubit extends Cubit<UsuarioState>{

  UsuarioCubit() : super(UsuarioInitial());

  void seleccionarUsuario(Usuario usuario){
    emit(UsuarioActivo(usuario));
  }

  void cambiarEdad(int edad){
    final currentState = state;
    if(currentState is UsuarioActivo){
      final newUser = currentState.usuario.copyWith(edad: edad);
      emit(UsuarioActivo(newUser));
    }
  }

  void agregarProfesion(){
    final currentState = state;
    if(currentState is UsuarioActivo){
      print('profesion');
      final newProfesion = [
        ...currentState.usuario.profesiones,
        'profesion ${ currentState.usuario.profesiones.length }'
      ];
      final newUser = currentState.usuario.copyWith(profesiones: newProfesion);
      emit(UsuarioActivo(newUser));
    }
  }

  void borrarUsuario(){
    emit(UsuarioInitial());
  }

}