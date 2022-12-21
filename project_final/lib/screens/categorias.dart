import 'package:flutter/material.dart';
import 'package:project_final/widgets/Categorias_widget.dart';
import 'package:project_final/widgets/text_widget.dart';
import 'package:project_final/servicios/Utilidades.dart';



class PantallaCategorias extends StatelessWidget {
  PantallaCategorias({Key? key}) : super(key: key);

  List<Map<String, dynamic>> catInfo = [
    {'imgPath':'Assets/1.png', 'Assets':'Leche'},
    {'imgPath':'Assets/2.png', 'Assets':'Huevos'},
    {'imgPath':'Assets/3.png', 'Assets':'Lacteos'},
    {'imgPath':'Assets/4.png', 'Assets':'Miel'},
    {'imgPath':'Assets/5.png', 'Assets':'Miel'},
    {'imgPath':'Assets/6.png', 'Assets':'Miel'},
  ];
  @override
  Widget build(BuildContext context) {

    final utils = Utils(context);
    Color color = utils.color;
    return  Scaffold(
      appBar: AppBar(elevation: 5,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: TextWidget(text: 'Categorias', color: color, textSize: 24, Estitulo: true,), ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(crossAxisCount: 2,
        childAspectRatio: 240/250,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(6, (index) {
          return CategoriasWidget(
            Assets: catInfo[index]['Assets'],
            imgPath: catInfo[index]['imgPath'],
            color: Colors.green,
          );
    }
    ),
        ),
      ),
    );
  }
}