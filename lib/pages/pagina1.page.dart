import 'package:estados/models/Usuario.model.dart';
import 'package:flutter/material.dart';
import 'package:estados/services/Usuario.service.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: usarioService.usuarioStream ,
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
          return snapshot.hasData
        ? InformacionUsuario(snapshot.data)
        : Center(child: Text('No hay usuario',
          style: TextStyle(fontSize: 25, color: Colors.red),
        ));
        },
      ),
      floatingActionButton: FloatingActionButton(
       child: Icon(Icons.push_pin),
       onPressed: (){
         Navigator.pushNamed(context, 'page2');
       },
     ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;

  const InformacionUsuario(this.usuario);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(title: Text('Nombre: ${usuario.nombre}'),),
          ListTile(title: Text('Edad: ${usuario.edad}'),),

          Text('Profesiones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),

          ListTile(title: Text('Profesion 1'),),
          ListTile(title: Text('Profesion 2'),),
          ListTile(title: Text('Profesion 3'),),

        ],
      )
     );
  }
}