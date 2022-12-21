import 'package:flutter/material.dart';
import 'package:project_final/servicios/Utilidades.dart';
import 'package:project_final/widgets/text_widget.dart';

class PriceWidget extends StatelessWidget{
  const PriceWidget({Key?key, required this.salePrice, required this.price, required this.textPrice, required this.isOnSale }) : super(key: key);
  final double salePrice, price;
  final String textPrice;
  final bool isOnSale;

  @override
  Widget build(BuildContext context){
    final Color color = Utils(context).color;
    double userPrice = isOnSale? salePrice : price;
    return FittedBox(
        child: Row(
          children: [
            TextWidget(text:'\$${(userPrice * int.parse(textPrice)).toStringAsFixed(2)}',
              color: Colors.green,
              textSize: 18,
            ),
            const SizedBox(
              width: 5,
            ),
        ],
      ),
    );
  }
}