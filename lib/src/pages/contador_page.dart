import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _styleText = TextStyle(fontSize: 25);
  int _contador = 0;

  void _aumentarContador() {
    _contador++;
    setState(() {});
  }

  void _disminuirContador() {
    if (_contador != 0) {
      _contador--;
    }
    setState(() {});
  }

  void _restaurarContador() {
    _contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aplicacion de prueba'),
          centerTitle: true,
          backgroundColor: Colors.cyan.shade800,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Numero de clics:',
                style: _styleText,
              ),
              Text('$_contador', style: _styleText)
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(
        width: 30,
      ),
      FloatingActionButton(
          child: Icon(Icons.restart_alt), onPressed: _restaurarContador),
      Expanded(child: SizedBox(width: 15)),
      FloatingActionButton(
          child: Icon(Icons.remove), onPressed: _disminuirContador),
      SizedBox(width: 15),
      FloatingActionButton(
          child: Icon(Icons.add), onPressed: _aumentarContador),
    ]);
  }
}
