import 'package:flutter/material.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            Divider(),
            ListTile(title: Text('Nombre'),),
            ListTile(title: Text('Edad'),),

            Text('Profesiones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            Divider(),

            ListTile(title: Text('Profesion 1'),),
            ListTile(title: Text('Profesion 2'),),
            ListTile(title: Text('Profesion 3'),),

          ],
        )
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