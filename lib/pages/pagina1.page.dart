import 'package:estados/bloc/usurario/usuario.cubit.dart';
import 'package:estados/models/Usuario.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => context.bloc<UsuarioCubit>().borrarUsuario(),
          )
        ],
      ),
      body: BlocBuildBody(),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.push_pin),
       onPressed: (){
         Navigator.pushNamed(context, 'page2');
       },
     ),
   );
  }
}

class BlocBuildBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsuarioCubit, UsuarioState>(
      builder: _buildBlocUser,
    );
  }

  Widget _buildBlocUser(_, state) {
      switch (state.runtimeType) {
        case UsuarioInitial:
          return Center(child: Text('No hay usuario'));
          break;
        case UsuarioActivo:
          return InformacionUsuario((state as UsuarioActivo).usuario);
          break;
        default:
          return Center(child: Text('Evento no reconocido'));
      }
  
      // if(state is UsuarioInitial){
      //   return Center(child: Text('No hay usuario'));
      // }else if(state is UsuarioActivo){
      //   return InformacionUsuario(state.usuario);
      // }else{
      //   return Center(child: Text('Evento no reconocido'));
      // }
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
          .map((e) => ListTile(title: Text(e),))
          .toList()

        ],
      )
     );
  }
}