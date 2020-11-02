import 'package:estados/models/Usuario.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:estados/bloc/usuario/usuario_bloc.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final UsuarioBloc usuarioBloc = BlocProvider.of<UsuarioBloc>(context);

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
                  profesiones: ['fullstack dev']
                );
                usuarioBloc.add(ActivarUsuario(newUser));
              },
            ),
            FlatButton(
              child: Text('Cambiar edad'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                usuarioBloc.add(CambiarEdad(30));
              },
            ),
            MaterialButton(
              child: Text('Agregar Profesion'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                usuarioBloc.add(AgregarProfesion(''));


              },
            )
          ],
        )
     ),
   );
  }
}