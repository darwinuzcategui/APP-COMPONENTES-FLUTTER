import 'package:flutter/material.dart';

import 'dart:async';

class ListaPag extends StatefulWidget {
  @override
  _ListaPagState createState() => _ListaPagState();
}

class _ListaPagState extends State<ListaPag> {
  //aqui todas las Propiedades de la clases Para tener los estados
  ScrollController _scrollController = new ScrollController();
  List<int> _listaNumeros = new List(); // = [1,2,3,4,5];
  int _ultimoItem = 0;
  bool _isLoadiningOestaCargando = false;

  @override
  void initState() {
    super.initState();
   _agregar10En10(); //implement initState
    _scrollController.addListener(() {
      print('scroll !!!');
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
      
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    // metodo para destruir o onDestroy
    super.dispose();
    //prevenir fuga de memoria
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        // apila una sobre otro
        children: <Widget>[
          _crearLista(),
          _crearCargando(),
        ],
      ),
    );
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: obtenerPagina1,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listaNumeros[index];

          return FadeInImage(
            placeholder: AssetImage('assets/balon.gif'),
            image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
          );
        },
      ),
    );
  }

  void _agregar10En10() {
    for (var i = 0; i < 10; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
    setState(() {});
  }

  Future<Null> obtenerPagina1() async {
    final duration = Duration(seconds: 2);
    new Timer(duration, () {
      // pulgo o limpio la lista
      _listaNumeros.clear();
      _ultimoItem++;
     _agregar10En10();


    });
    return Future.delayed(duration);

  }
  Future<Null> _fetchData() async {
    // vamos a simular una lazy
    _isLoadiningOestaCargando = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    return new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoadiningOestaCargando = false;
    _scrollController.animateTo(
      _scrollController.position.pixels+100,
      curve: Curves.fastOutSlowIn,
      duration:Duration(milliseconds: 250),
    );
    _agregar10En10();
  }

  Widget _crearCargando() {
    if (_isLoadiningOestaCargando) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 25.0),
        ],
      );
      //
    } else {
      return Container();
    }
  }
}
