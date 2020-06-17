import 'package:flutter/material.dart';

class InicioTemporal extends StatelessWidget {
 
 // const InicioTemporal({Key key}) : super(key: key);
 final opciones = [ "Sistemas Adminitrativo","Sistema Movil","Flutter IOS","WEB APP","Nomina","Sistemas Facturacion Fiscal","Impresoras Fiscal","Sistema Personalizados"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Componentes Temporal'),
      ),
      body: ListView(
        //  children:_crearItem()
        children:_crearListaItemsCorto()
      )
    );
  }



  // anten terminar la clases



  List<Widget> _crearListaItemsCorto(){
    return opciones.map( (item ) {

      return Column(
        children: <Widget>[
          ListTile(
            
            title: Text(item+"!"),
            subtitle: Text("Cualquier datos Subtitulo"),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){print("Hola Pulsaste ");},

          ),
          Divider()
        ],
      );

    }).toList();

   // return windgets;
    
  }
  /*
  List<Widget> _crearListaItemsCorto(){
    var windgets = opciones.map( (item ) {

      return ListTile(
        title: Text(item+"!"),

      );


    }).toList();

    return windgets;
    
  }
  */
}