import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:segunda/lista.dart';

import 'package:segunda/paginas/inicio.dart';
import 'package:segunda/usuario.dart';

//CLASE DONDE SE DEFINE EL CONTENIDO DEL MENÚ
class menulateral extends StatelessWidget {
  const menulateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( //Se abre un container para evitar errores de RenderFlex desbordado
        width: 288, //Se define el tamaño del menú a lo ancho
        height: double.infinity, //Se define el largo del menú
        color: const Color(0xFFB5DA66), //Se define el color del menú

        child: SafeArea(

          child: Column(
            children: [
              const usuario(), //Se llama a la clase usuario
              Padding( //Se define un borde para insertar el texto de buscar como apartado
                padding: const EdgeInsets.only(left: 24, top:20,bottom: 16),
                child: Text(
                  "Buscar".toUpperCase(), //Nombre del apartado
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white70), //Se define el color
                ),
              ),
              const Padding( padding: EdgeInsets.only(left: 24),child: Divider(height: 1,color: Colors.white24,), ),


              //const SizedBox(height: 20,width: 20,),

              listamenu( //Se llama a lista menú de menu.dart para definir la primera opcion del menú
                nombre: 'Inicio',
                icono: CupertinoIcons.person, //Se define el icono de la libreriía Cupertino Icons
                Presionar: ()=> onItemPressed(context,index:0),
              ),

              const Padding( padding: EdgeInsets.only(left: 24),child: Divider(height: 1,color: Colors.white24,), ),


              //const SizedBox(height: 20,width: 20,),

              listamenu(
                nombre: 'Buscar',
                icono: CupertinoIcons.search,
                Presionar: ()=> onItemPressed(context,index:0),
              ),

              const Padding( padding: EdgeInsets.only(left: 24),child: Divider(height: 1,color: Colors.white24,), ),

              listamenu(
                nombre: 'Alarma',
                icono: CupertinoIcons.clock,
                Presionar: ()=> onItemPressed(context,index:0),
                //isActive: false,

              ),

              const Padding( padding: EdgeInsets.only(left: 24),child: Divider(height: 1,color: Colors.white24,), ),

              listamenu(
                nombre: 'Reciclaje',
                icono: CupertinoIcons.info,
                Presionar: ()=> onItemPressed(context,index:0),
                //isActive: false,

              ),

              Padding(
                padding: const EdgeInsets.only(left: 24, top:20,bottom: 16),
                child: Text(
                  "Otros".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white70),
                ),
              ),
              const Padding( padding: EdgeInsets.only(left: 24),child: Divider(height: 1,color: Colors.white24,), ),

              //const SizedBox(height: 20,width: 20,),

              listamenu(
                nombre: 'Configuración',
                icono: CupertinoIcons.settings,
                Presionar: ()=> onItemPressed(context,index:0),
              ),
              const Padding( padding: EdgeInsets.only(left: 24),child: Divider(height: 1,color: Colors.white24,), ),

            ],
          ),
        ),
      ),
    );
  }
  void onItemPressed(BuildContext context,{required int index}){
    Navigator.pop(context);

    switch(index){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const persona()));
        break;


    }
  }
}

