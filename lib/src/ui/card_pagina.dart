import 'package:flutter/material.dart';

class CardPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.00),
        // padding: EdgeInsets.symmetric(horizontal:50.0,vertical:10.00),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.00),
          _cardTipo2(),
          SizedBox(height: 30.00),
          _cardTipo1(),
          SizedBox(height: 30.00),
          _cardTipo2(),
          SizedBox(height: 30.00),
          _cardTipo1(),
          SizedBox(height: 30.00),
          _cardTipo2(),
          SizedBox(height: 30.00),
          _cardTipo1(),
          SizedBox(height: 30.00),
          _cardTipo2(),
          SizedBox(height: 30.00),
          _cardTipo1(),
          SizedBox(height: 30.00),
          _cardTipo2(),
          SizedBox(height: 30.00),
          _cardTipo1(),
          SizedBox(height: 30.00),
          _cardTipo2(),
          SizedBox(height: 30.00),
          _cardTipo1(),
          SizedBox(height: 30.00),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.orange),
            title: Text("Que Es Card o Tarjeta"),
            subtitle: Text(
                'Una tarjeta de diseño de materiales.Una carta tiene esquinas ligeramente redondeadas y una sombra.Una tarjeta es una hoja de material utilizada para representar información relacionada, por ejemplo, un álbum, una ubicación geográfica, una comida, datos de contacto, etc.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {
                  print('Pulsaste Cancelar!');
                },
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  print('Pulsaste Ok !');
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    String urlImg =
        'https://c.pxhere.com/photos/be/59/basketball_court_sport_landscape-912299.jpg!d';
    final card = Container(
      // clipBehavior:Clip.antiAlias,
      //elevation: 2.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(urlImg),
            placeholder: AssetImage('assets/balon.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 200.0,
            fit: BoxFit.cover,
          ),
          //Image(
          //  image: NetworkImage('https://photocontest.fiba.basketball/wp-content/uploads/2019/02/B736A66F-9490-4FD4-8315-BBFD37F8213D-1024x681.jpeg'),
          // ),
          Container(
              padding: EdgeInsets.all(8.00),
              child: Text('La imagen de un Paisaje de Baloncesto'))
        ],
      ),
    );

    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.00),
            color: Colors.orangeAccent,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.orange[100],
                  blurRadius: 10.00,
                  spreadRadius: 2.00,
                  offset: Offset(2.00, -10.00)) // BoxShadow
            ] // <BoxShadow>[]
            ), // BoxDecoration
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.00),
          child: card,
        ) // ClipRRect
        ); // Container
  }
}
