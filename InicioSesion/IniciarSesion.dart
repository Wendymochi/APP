import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:segunda/InicioSesion/Registrarse.dart';
import 'package:segunda/edicion/colores.dart';
import 'package:segunda/widgets/Ingresar.dart';
import 'package:segunda/widgets/CajaTextField.dart';

class IniciarSes extends StatelessWidget {
  IniciarSes({Key? key}) : super(key: key);
  final TextEditingController telefControlador = TextEditingController();
  final TextEditingController contraControlador = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(registrarse());
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 2, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'LOGO',
                    style: TextStyle(color: Colores.mainColor,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                /*const SizedBox(height: 60),
                Text(
                  'Ingresa a tu cuenta',
                  style: TextStyle(color: Colores.colortexto,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),*/

                const SizedBox(height: 45),
                //Ingresar número de teléfono
                Field(controller: telefControlador,
                  text: 'Número telefónico',
                  textInputType: TextInputType.phone,
                  obscure: false,
                ),

                const SizedBox(height: 10),
                //Ingresar contraseña
                Field(controller: contraControlador,
                  text: 'Contraseña',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 30),
                const BotonInicio(),

                const Padding(
                  padding: EdgeInsets.only(left: 60, top: 40),
                  child: Row(
                  children: [
                    Text("Registrarse", style: TextStyle(color: Colors.black54), ),
                    SizedBox(width:40 ,height: 25,),
                    Text("Olvide mi contraseña",style: TextStyle(color: Colors.black54),),
                  ],
                ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('¿No tienes una cuenta?',
            style: TextStyle(color: Colors.black54),
            ),
            InkWell(
              child: Text(
                  ' Registrarse',

                style: TextStyle(
                  color: Colores.mainColor,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
