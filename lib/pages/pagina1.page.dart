import 'package:estados/models/Usuario.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/bloc/usuario/usuario_bloc.dart';



class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: (){
              BlocProvider.of<UsuarioBloc>(context).add(BorraUsuario());
            },
          )
        ],
      ),
      body: BlocBuilder<UsuarioBloc, UsuarioState>(
        builder: (context, state) {
          if(state.existeUsuario){
            return InformacionUsuario(state.usuario);
          }else{
            return Center(child: Text('No hay Usuario activo'));
          }
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

          ...usuario.profesiones
          .map((e) => ListTile(title: Text(e),)).toList()

        ],
      )
     );
  }
}