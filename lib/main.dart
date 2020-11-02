import 'package:estados/bloc/usurario/usuario.cubit.dart';
import 'package:estados/pages/pagina1.page.dart';
import 'package:estados/pages/pagina2.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ( _ ) => UsuarioCubit())
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'page1',
        routes: {
          'page1': (_) => Pagina1Page(),
          'page2': (_) => Pagina2Page()
        },
      ),
    );
  }
}