import 'package:flutter/material.dart';

class AvatarPagina extends StatelessWidget {
  // creaunaPropiedad
  static final pagNombre ='avatar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Pagina'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.teleadhesivo.com/es/img/fomxp133-jpg/folder/products-listado-merchant/fotomurales-michael-jordan.jpg'),
              radius: 18.00,

            ),
          ),
          Container(
            margin: EdgeInsets.only(right:10.00),
            child: CircleAvatar(
              child:Text('SL'),
              backgroundColor: Colors.deepOrangeAccent,
              
            ),
          )
        ],
      ),
      body: Center(
        child:FadeInImage(
          image: NetworkImage('https://www.teleadhesivo.com/es/img/as1324-jpg/folder/products-listado-merchant/vinilos-decorativos-air-jordan-bigger.jpg'),
          placeholder: AssetImage('assets/balon.gif'),
          fadeInDuration: Duration(milliseconds:200),
          ),
      ),
    );
  }
}