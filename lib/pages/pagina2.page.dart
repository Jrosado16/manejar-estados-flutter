import 'package:estados/models/Usuario.model.dart';
import 'package:flutter/material.dart';

import 'package:estados/services/Usuario.service.dart';



class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: usarioService.usuarioStream ,
          builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
            return snapshot.hasData
            ? Text(snapshot.data.nombre)
            : Text('Pagina 2');
          },
        ),
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
                final newUser = Usuario(nombre: 'Carlos', edad: 26);
                usarioService.cargarUsuario(newUser);
              },
            ),
            FlatButton(
              child: Text('Cambiar edad'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                usarioService.cambiarEdad(20);

              },
            ),
            MaterialButton(
              child: Text('Agregar Profesion'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){

              },
            )
          ],
        )
     ),
   );
  }
}