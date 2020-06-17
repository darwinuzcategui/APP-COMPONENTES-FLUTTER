import 'package:flutter/material.dart';

class SliderPag extends StatefulWidget {
  @override
  _SliderPagState createState() => _SliderPagState();
}

class _SliderPagState extends State<SliderPag> {
  double _valorSlider = 200.0;
  bool _bloquearcheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkbox(),
            _crearSwit(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

//van los metodos

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.orangeAccent,
      label: 'Tamano de la Imagen',
      // divisions: 10,
      value: _valorSlider,
      min: 80.0,
      max: 330.0,
      onChanged: (_bloquearcheck)
          ? null
          : (valor) {
              print(valor);
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _checkbox() {
    /*
    return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );

    */
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearcheck,
      onChanged: (valor) {
        setState(() {
          _bloquearcheck = valor;
        });
      },
    );
  }

  Widget _crearSwit() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearcheck,
      onChanged: (valor) {
        setState(() {
          _bloquearcheck = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      // https://e.rpp-noticias.io/normal/2018/10/25/481948_699655.jpg
      // https://www.panorama.com.ve/__export/1585690649855/sites/panorama/img/2020/03/31/jordan2.png_2115120847.png
      image: NetworkImage(
          'https://www.panorama.com.ve/__export/1585690649855/sites/panorama/img/2020/03/31/jordan2.png_2115120847.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
