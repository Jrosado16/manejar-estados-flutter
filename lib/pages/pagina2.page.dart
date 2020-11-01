import 'package:estados/models/Usuario.model.dart';
import 'package:estados/services/users.service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
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
                final newUser = Usuario(nombre: 'Carlos', edad: 26,
                profesiones: ['dev', 'full']
                );
                userProvider.addUser = newUser;
              },
            ),
            FlatButton(
              child: Text('Cambiar edad'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                userProvider.addEdad = 20;
              },
            ),
            MaterialButton(
              child: Text('Agregar Profesion'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){

                userProvider.addProfesion();

              },
            )
          ],
        )
     ),
   );
  }
}