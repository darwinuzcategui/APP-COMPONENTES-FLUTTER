import 'package:flutter/material.dart';

class InputPag extends StatefulWidget {
  @override
  _InputPagState createState() => _InputPagState();
}

class _InputPagState extends State<InputPag> {
  String _nombre = "";
  String _email = "";
  String _clave = "";
  String _fecha = "";
  String _elemenSelecionado ="Cancha";
  List<String> _baloncesto =['Cancha', 'Balon','Jugador','Cestas','Puntos','Tapones','Triples'];
  TextEditingController _inputFieldFechaControlador =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entradas de datos"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearNombre(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearClave(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearNombre() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre de La personas', // nombre sugerido
        labelText: 'Nombre',
        helperText: 'Solo el Nombre sin los Apellidos',
        suffixIcon: Icon(Icons.accessibility_new),
        icon: Icon(Icons.account_box),
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
          print(_nombre);
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),

          hintText: 'Correo Electronico', // nombre sugerido
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email),
        ),
        onChanged: (valor) => setState(() {
              _email = valor;
            }));
  }

  Widget _crearClave() {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),

          hintText: 'Passwoord', // nombre sugerido
          labelText: 'Clave',
          suffixIcon: Icon(Icons.keyboard),
          icon: Icon(Icons.lock),
        ),
        onChanged: (valor) => setState(() {
              _clave = valor;
            }));
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldFechaControlador,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),

        hintText: 'Fecha de Nacimiento', // nombre sugerido
        labelText: 'Fecha de Nacimiento',
        suffixIcon: Icon(Icons.calendar_view_day),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _seleFecha(context);
      },
    );
  }

  _seleFecha(BuildContext context) async {
    DateTime fechaSelecionadaOpicked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1980),
      lastDate: new DateTime(2028),
      locale: Locale('es', 'ES'),
    );

    if (fechaSelecionadaOpicked != null) {
      setState(() {
        _fecha = fechaSelecionadaOpicked.toString();
        _inputFieldFechaControlador.text = _fecha;
      });
    }
  }

  
  List<DropdownMenuItem<String>> getOpcionesDropdonw(){

    List<DropdownMenuItem<String>> lista = new List();

    _baloncesto.forEach( (elemento){
      lista.add(DropdownMenuItem(
        child: Text(elemento),
        value: elemento,
        ));

    });

    return lista;


  }

  Widget _crearDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width:30.00),
        Expanded(
                  child: DropdownButton(
            value: _elemenSelecionado,
            items:getOpcionesDropdonw(),
            onChanged: (selecion) {
              setState(() {
                _elemenSelecionado = selecion;
              });
              print(selecion);
            },
          ),
        ),
      ],
    );
  }

  
// metodo para crear personas

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es $_nombre'),
      subtitle: Text('Correo: $_email   Password  $_clave'),
      trailing: Text(_elemenSelecionado),
    );
  }
}
