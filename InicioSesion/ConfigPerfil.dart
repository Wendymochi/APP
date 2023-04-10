import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:segunda/InicioSesion/ConfirmarContra.dart';
import 'package:segunda/InicioSesion/ConfirmarNum.dart';
import 'package:segunda/widgets/LineaTextField.dart';
import 'package:segunda/widgets/RadioButton.dart';
import 'package:segunda/widgets/Verificar.dart';
import 'package:segunda/widgets/CajaTextField.dart';

import '../widgets/Caja.dart';
import '../widgets/Siguiente.dart';


class configPerf extends StatelessWidget {
  configPerf({Key? key}) : super(key: key);

  TextEditingController texto = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(

            width: double.infinity,
            padding: const EdgeInsets.only(top: 2, left: 25, right: 25,bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 70),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    'Configura tu perfil',
                    style: TextStyle(color: Colors.black,
                      fontSize: 19,
                      //fontWeight: FontWeight.,
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                Container(
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    'Apodo',
                    style: TextStyle(color: Colors.black26,
                      fontSize: 15,
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                Linea(controller: texto,
                    text: "Ingresar apodo",
                    textInputType: TextInputType.text,
                    obscure: true
                ),

                const SizedBox(height: 40),

                Container(
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    'Fecha de Nacimiento',
                    style: TextStyle(color: Colors.black26,
                      fontSize: 15,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Container(
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    'Género',
                    style: TextStyle(color: Colors.black26,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 5),



                const SizedBox(height: 50),


                const siguiente(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

