import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:hola_darwin/src/routes/routes.dart';
import 'package:hola_darwin/src/ui/alerta_pagina.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Componentes Flutter',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en','US'), // English
        const Locale('es','ES'), // Espanol
      ],
      // home: InicioPagina()
      initialRoute: '/',
      routes: getAppRutas(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta Llamada: ${settings.name}');

        return MaterialPageRoute(
            builder: (BuildContext context) => AlertaPagina());
      },
    );
  }
}
