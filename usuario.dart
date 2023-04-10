import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//Clase usuario, contiene las características del apartado del usuario en el menú
class usuario extends StatelessWidget {
  const usuario({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 9),
      child: ListTile(
        leading: CircleAvatar( //Se define el circulo base para representar al usuario
          backgroundColor: Colors.white60, //Se define el color de la figura
          child: Icon(
            CupertinoIcons.person, //Se inserta un icono de un usurio con la libreria Cupertino
            color: Colors.white, //Se define el color del icono
          ),
        ),
        title: Text(
          'Nombre del usuario',
          style: TextStyle(color: Colors.white), //Se define el nombre del usuario y el color de texto
        ),
        subtitle: Text(
          'teléfono',
          style: TextStyle(color: Colors.white), //Se define el segundo dato del usuario y el color de texto
        ),
      ),
    );
  }
}

