import 'package:flutter/material.dart';
import 'package:hola_darwin/src/providers/menu_provider.dart';

// import 'package:hola_darwin/src/ui/alerta_pagina.dart';

import 'package:hola_darwin/src/utils/icono_string_util.dart';

class InicioPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Componentes")
         ), // appBar
         body: _lista(),
    ); // Scaffold
  }

 Widget _lista() {

 // print(menuProvider.opciones);
 // menuProvider.cargarData().then( (opciones){

  return FutureBuilder(
    future: menuProvider.cargarData(),
    initialData: [],
    builder: ( BuildContext context , AsyncSnapshot<List<dynamic>> snapshot){


      // print('builder');
      //print(snapshot.data);

      return ListView(
        children: _listasItems(snapshot.data, context),
      );

    },

  );


 //    print('estoy ejecutando con _lista**');
 //   print(opciones);

  // });
  // return ListView(
  //   children: _listasItems(),
  // );
 }

  List<Widget> _listasItems( List<dynamic> data, BuildContext context) {

    final List<Widget> opciones = [];

   // if(data == null ){return[]; }

    data.forEach( ( unaOpcion ) {

      final widgetTemporal =ListTile (
        title: Text(unaOpcion['texto'] ),
        leading: getIcon(unaOpcion['icon']),
        trailing: Icon(Icons.arrow_forward, color: Colors.orangeAccent),
        onTap: () {
          print ("Rutas de Navegacion entre vista");
          print("pulsaste aqui");

          // otro metodo para nevagar es Navigator.pushNamed
          Navigator.pushNamed(context, unaOpcion['ruta']);


          // Metodo de Navegacion llamado Navigator
          //final route = MaterialPageRoute(
         //   builder:( context) => AlertaPagina()
            //   builder:( context) {
            //  return AlertaPagina();
            //}
          //  );
          //Navigator.push(context, route);
        },
      ); // ListTitle

      opciones..add(widgetTemporal)
            ..add(Divider());

    });

  return opciones;  
 
  }

}