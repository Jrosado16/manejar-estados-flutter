import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
              onPressed: (){},
            ),
            FlatButton(
              child: Text('Cambiar edad'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){},
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