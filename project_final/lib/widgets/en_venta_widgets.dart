import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:project_final/servicios/Utilidades.dart';
import 'package:project_final/widgets/corazon_btn.dart';
import 'package:project_final/widgets/price_widgets.dart';
import 'package:project_final/widgets/text_widget.dart';
import 'package:project_final/widgets/price_widgets.dart';
class OnsaleWidget extends StatefulWidget {
  const OnsaleWidget({Key? key}) : super(key: key);

  @override
  State<OnsaleWidget> createState() => _OnsaleWidgetState();
}

class _OnsaleWidgetState extends State<OnsaleWidget>{
  @override
  Widget build(BuildContext context){
    final Color color = Utils(context).color;
    final theme = Utils(context).getTheme;
    Size size = Utils(context).getScreenSize;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).cardColor.withOpacity(0.9),
        borderRadius:BorderRadius.circular(12),
        child: InkWell(
          borderRadius:BorderRadius.circular(12),
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('Assets/4.png',
                  height: size.width*0.17,
                  width: size.width*0.22,),
                Column(children: [
                  TextWidget(
                    text: '1kg',
                    color: color,
                    textSize: 22,
                    Estitulo: true,
                  ),
                  const SizedBox(height: 6,),
                  Row(children: [
                    GestureDetector(
                      onTap: (){},
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        size: 22,
                        color: color,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        print('ha indicado que le gusta');
                      },
                      child: Icon(
                        IconlyLight.heart,
                        size: 22,
                        color: color,
                          ),
                       ),
                      ],
                    ),
                  ],
                )
              ],
            ),
              const PriceWidget(
                salePrice: 500,
                price: 0,
                textPrice: '1',
                isOnSale: true,
              ),
              const SizedBox(height: 5,),
              TextWidget(text: 'Zanahoria', color: color, textSize: 16),
              const SizedBox(height: 5,),
          ],),
          )
        ),
      ),
    );
  }
}