import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final/Widgets/Homeappbar.dart';
import 'package:proyecto_final/Widgets/CategoriasWidgets.dart';
import 'package:proyecto_final/Widgets/itemwidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
        HomeAppBar(),
        Container(
          // height: 500,
          padding: const EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Column(children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child:  Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                     border: InputBorder.none,
                      hintText: "Buscar.... "
                    ),
                  ),
                ),
              ],
              ),
            ),
            Container(
              alignment:Alignment.centerLeft ,
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: const Text(
                "Categorias",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
                color: Colors.black,),

              ),
            ),
            CategoriasWidget(),

            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: const Text("Productos", style:  TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
              ),
            ),
            ItemWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){},
        height: 70,
        color: Colors.lightGreenAccent,
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
            ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          )
         ],
      ),
    );
  }
}