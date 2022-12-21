import 'package:flutter/material.dart';
import 'package:project_final/screens/carrito/card_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (ctx, index){
        return CartWidget();
      }
      )
    );
  }
}
