import 'package:flutter/material.dart';


final _icons = <String, IconData>{

'add_alert'     : Icons.add_alert,
'accessibility' : Icons.accessibility,
'folder_open'   : Icons.folder_open,
'flight_takeoff': Icons.flight_takeoff,
'input'         : Icons.input,
'slider'        : Icons.airport_shuttle,
'list'          : Icons.list,

};

Icon getIcon( String nombreIcono) {
 
  return Icon(_icons[nombreIcono], color: Colors.orangeAccent);
}