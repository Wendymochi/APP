import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:segunda/InicioSesion/SplashS.dart';


import 'package:segunda/menu.dart';
import 'package:segunda/widgets/RadioButton.dart';
//Main de la clase

void main() {
  runApp(const App());

}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: RadioB(),
    );
  }
}


class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const menulateral(), //llama a la clase menu
      appBar: AppBar( //Se crea una pantalla de inicio para testear al menú
        title: const Text('BAPP'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Builder(
        builder: (context) {
          return Center(
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width - 100,
              child: ElevatedButton.icon( //Se inserta un botón a la mitad de la pantalla
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent, //Se define el color del botón
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer(); //se llama a la clase menú al presionar el botón
                },
                icon: const Icon(Icons.open_in_new, color: Colors.white), //Se inserta un icono en el botón
                label: const Text(
                  'Menú',
                  style: TextStyle(color: Colors.white), //Se define el color del texto del boton
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
