import 'package:flutter/material.dart';
//CLASE QUE CONTIENE LAS CARACTERÍSTICAS DEL ICONO, SU TEXTO Y EL MÉTODO ON TAP
class listamenu extends StatelessWidget {
  const listamenu({Key? key, required this.nombre, required this.icono, required this.Presionar}) : super(key: key);
  
  final String nombre; 
  final IconData icono;
  final Function() Presionar;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Presionar,//Funcionalidad de botón
      child: Container(

        height: 56,
        decoration: BoxDecoration(
       color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),

        /*child: SizedBox(
          height: 66,//Altura de la caja que contiene el icono y texto
*/
          child: Padding(
            padding: const EdgeInsets.only(left: 24),

            child: Row(
              children: [
                Icon(icono, size: 20, color: Colors.white), //Características del icono
                const SizedBox(width: 25,height: 25,),
                Text(nombre, style: const TextStyle(color: Colors.white),) //Características del texto que describe el icono
              ],
            ),

          ),
        //),

      ),

    );
  }
}
