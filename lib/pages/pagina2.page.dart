import 'package:estados/bloc/usurario/usuario.cubit.dart';
import 'package:estados/models/Usuario.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final usuarioBloc = context.bloc<UsuarioCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Agregar Usuario'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                final newUser = Usuario(
                  nombre: 'Carlos Rosado',
                  edad: 26,
                  profesiones: [
                    'FullStack',
                    'Frontend dev'
                  ]
                );
                usuarioBloc.seleccionarUsuario(newUser);
              },
            ),
            FlatButton(
              child: Text('Cambiar edad'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                usuarioBloc.cambiarEdad(25);
              },
            ),
            MaterialButton(
              child: Text('Agregar Profesion'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                usuarioBloc.agregarProfesion();


              },
            )
          ],
        )
     ),
   );
  }
}