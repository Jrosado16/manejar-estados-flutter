import 'package:estados/models/Usuario.model.dart';
import 'package:estados/services/users.service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        centerTitle: true,
      ),
      body: userProvider.existeUsuario
          ? UserItem(userProvider.usuario,)
          : Center(
              child: Text('No hay Usuario'),
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.push_pin),
        onPressed: () {
          Navigator.pushNamed(context, 'page2');
        },
      ),
    );
  }
}

class UserItem extends StatelessWidget {
  final Usuario usuario;

  const UserItem(this.usuario);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),
            ListTile(
              title: Text('Nombre: ${usuario.nombre}'),
            ),
            ListTile(
              title: Text('Edad: ${usuario.edad}'),
            ),
            Text(
              'Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),

            ...usuario.profesiones.map((e) => ListTile(title: Text(e),)).toList(),
          ],
        ));
  }
}
