import 'package:flutter/material.dart';
import 'package:proyecto_final/Widgets/cartappbar.dart';
import 'package:proyecto_final/Widgets/cartitemssamples.dart';

class CardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),

          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft:  Radius.circular(35),
                topRight: Radius.circular(35),
              ),),
            child: Column(children: [
              CartItemSamples()
            ],),
          )
        ],
      ),
    );
  }
}