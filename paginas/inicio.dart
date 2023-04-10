import 'package:flutter/material.dart';

class persona extends StatelessWidget {
  const persona({Key? key}) : super(key: key);
//INTERFAZ DE PRUEBA CON LA QUE SE ESTÁN ENLAZANDO LAS OPCIONES DEL MENÚ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persona'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
