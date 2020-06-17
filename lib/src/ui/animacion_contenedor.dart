import 'dart:math';

import 'package:flutter/material.dart';

class AnimacionContenedorPag extends StatefulWidget {
  @override
  _AnimacionContenedorPagState createState() => _AnimacionContenedorPagState();
}

class _AnimacionContenedorPagState extends State<AnimacionContenedorPag> {

  double _ancho = 50.0;
  double _alto  = 50.0;
  Color _color  = Colors.orangeAccent;

  BorderRadiusGeometry _borderRadio = BorderRadius.circular(8.00);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animacion Contenedor"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds:1),
          curve: Curves.easeInCubic,
          width: _ancho,
          height: _alto,
          decoration: BoxDecoration(
            borderRadius:_borderRadio,
            color: _color
          ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.play_circle_filled),
        onPressed:_cambiarForma,  
    ),
      
    );
  }
   void _cambiarForma() {

     final random = Random();
    
        print("pulsaste aqui floation button");
        setState(() {
          _alto  = random.nextInt(300).toDouble();
          _ancho = random.nextInt(300).toDouble();
          _color = Color.fromRGBO(
              random.nextInt(255),
              random.nextInt(255),
              random.nextInt(255),
              1);
              _borderRadio = BorderRadius.circular(random.nextInt(100).toDouble());

          
        });

  }
}