import 'package:flutter/material.dart';
import 'package:flutter_application_1/clase_140226/contador_provider.dart';
import 'package:flutter_application_1/clase_140226/contador_widget.dart';
import 'package:flutter_application_1/clase_310146/dialogs_widget.dart';
import 'package:flutter_application_1/clase_310146/drawer_widget.dart';
import 'package:flutter_application_1/clase_310146/padding_widget.dart';
import 'package:flutter_application_1/clase_310146/positioned_widget.dart';
import 'package:flutter_application_1/clase_310146/rowicons_widget.dart';
import 'package:flutter_application_1/clase_310146/cardlist_widget.dart';
import 'package:provider/provider.dart';
import '../clase_310146/appBar_widget.dart';
import '../clase_310146/style_widget.dart';
import '../clase_310146/image_widget.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize( //para definir tamaño personalizado
      //   preferredSize: const Size.fromHeight(kToolbarHeight),// altura del appbar
      //   child: AppBarWidget(),//barra superior de la aplicacion
      // ),
      // body: CardlistWidget(), //SE ESTA MOSTRANDO EL CARDLIST WIDGET
      // drawer: DrawerWidget(), //menu oculto deslizable desde el borde izquierdo
      // floatingActionButton: FloatingActionButton( //boton flotante para acciones principales
      //   onPressed: () {},
      //   child: Icon(Icons.add),
        //ACTUAL
      // ),
       appBar: PreferredSize( //para definir tamaño personalizado
        preferredSize: const Size.fromHeight(kToolbarHeight),// altura del appbar
        child: AppBarWidget(),//barra superior de la aplicacion
      ),
      drawer: DrawerWidget(), //menu oculto deslizable desde el borde izquierdo
      floatingActionButton: FloatingActionButton( //boton flotante para acciones principales
        onPressed: () {
          context.read<ContadorProvider>().incrementar();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}