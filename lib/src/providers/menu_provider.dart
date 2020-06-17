// para leer Json se debe colocar el paquete de flutter
import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';


class _MenuProvider {
  List<dynamic> opciones =[];
  _MenuProvider(){

    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {

    final resp = await rootBundle.loadString('data/menu_opts.json');
    //.then( (data) {

      Map datosEnMap = json.decode(resp);

      // print(datosEnMap['rutas']);
      opciones = datosEnMap['rutas'];

      return opciones;
    }
  }

final menuProvider = new _MenuProvider();