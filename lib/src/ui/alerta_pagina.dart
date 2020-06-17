import 'package:flutter/material.dart';

class AlertaPagina extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerta Pagina'),
      ),
      body: Center(
        child:RaisedButton(
          child:Text('una alerta'),
          color: Colors.orangeAccent,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () =>_mostrarAlerta(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_left),
        onPressed:(){
          Navigator.pop(context);

      },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){

        return AlertDialog(
          shape: RoundedRectangleBorder (borderRadius:BorderRadius.circular(20.0) ),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children:<Widget>[
              Text('Este es el Contenido  de la caja**** se coloca todos los datos'),
              FlutterLogo(size:100.0 )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop() , 
              child: Text('cancelar'),
              ),
              FlatButton( 
              onPressed: () {
                Navigator.of(context).pop();
              } , 
              child: Text('Ok'),
              ),
          ],
        );
      }
      );
  }
}