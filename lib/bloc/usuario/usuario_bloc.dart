
import 'package:estados/models/Usuario.model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'usuario_event.dart';
part 'usuario_state.dart';

class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState>{
  UsuarioBloc() : super(UsuarioState());

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async*{

    if(event is ActivarUsuario){
      yield state.copyWith(usuario: event.usuario);

    }else if(event is CambiarEdad){

      yield state.copyWith(
        usuario: state.usuario.copyWith(
          edad: event.edad
        )
      );

    }else if(event is AgregarProfesion){
      String newProfesion = 'Profesion ${state.usuario.profesiones.length}';
      yield state.copyWith(
        usuario: state.usuario.copyWith(
          profesiones: [
            ...state.usuario.profesiones,
            newProfesion
          ]
        ) 
      );
      // yield UsuarioState(user: state.usuario.copyWith(profesiones: newProfesion));

    }else if(event is BorraUsuario){
      yield state.usuarioInical();
    }
  }

}