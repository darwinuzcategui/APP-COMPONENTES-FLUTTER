import 'package:flutter/material.dart';
import 'package:hola_darwin/src/ui/alerta_pagina.dart';
import 'package:hola_darwin/src/ui/animacion_contenedor.dart';
import 'package:hola_darwin/src/ui/avatar_pagina.dart';
import 'package:hola_darwin/src/ui/card_pagina.dart';
import 'package:hola_darwin/src/ui/incio_pagina.dart';
import 'package:hola_darwin/src/ui/input_pagina.dart';
import 'package:hola_darwin/src/ui/listviem_pagina.dart';
import 'package:hola_darwin/src/ui/slider_pagina.dart';


Map<String,WidgetBuilder> getAppRutas(){

  return  <String,WidgetBuilder>{
   '/'      : (BuildContext context) => InicioPagina(),
   'alert'  : (BuildContext context) => AlertaPagina(),
   AvatarPagina.pagNombre : (BuildContext context) => AvatarPagina(),
   'card' :   (BuildContext context) => CardPagina(),
   'animacionContenedor' :   (BuildContext context) => AnimacionContenedorPag(),
   'inputs': (BuildContext context) => InputPag(),
   'slider':(BuildContext context)=> SliderPag(),
   'list':(BuildContext context)=> ListaPag(),
};



}
