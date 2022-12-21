import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_final/widgets/corazon_btn.dart';
import 'package:project_final/widgets/text_widget.dart';
import 'carrito.dart';
import '../../servicios/Utilidades.dart';

class CartWidget extends StatefulWidget {
  
  const CartWidget({Key? key}) : super(key: key);

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  final _quantityTextController = TextEditingController();
  @override
  void initState(){
    _quantityTextController.text = '1';
    super.initState();
  }
  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    final Color color = Utils(context).color;
    return GestureDetector(
      onTap: (){},
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(12)
          ),
              child:  Row(
                children: [
                  Container(
                    height: size.width*0.20,
                    width: size.width*0.25,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Image.asset('Assets/2.png',
                      fit: BoxFit.fill,)
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    TextWidget(
                      text: 'Zanahoria',
                      color: color,
                      textSize: 20,
                      Estitulo: true,
                    ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      SizedBox(
                        width: size.width*0.3,
                        child: Row(
                          children: [
                          _quantityController(
                              fct: (){},
                              color: Colors.red,
                              icon: CupertinoIcons.minus,
                          ),
                            Flexible(
                              flex: 1,
                              child: TextField(
                                controller:_quantityTextController ,
                                keyboardType: TextInputType.number,
                                maxLines: 1,
                                decoration: const InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(),),),
                                inputFormatters:[
                                FilteringTextInputFormatter.allow(
                                  RegExp('[0-9]')
                                ),
                                ],
                                onChanged: (v){
                                  setState(() {
                                    if(v.isEmpty){
                                      _quantityTextController.text= '';
                                    }else{
                                      return;
                                    }
                                  });
                                },
                                onTap:(){
                                }
                              ),
                            ),
                            _quantityController(
                              fct: (){},
                              color: Colors.green,
                              icon: CupertinoIcons.plus,
                            )
                        ],
                        ),
                      ),
                  ],
                  ),
                  const Spacer(),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(children: [
                      InkWell(onTap: (){},
                        child: const Icon(
                          CupertinoIcons.cart_badge_minus,
                          color: Colors.red,
                          size: 20,
                        ),
                        ),
                      const SizedBox(
                        height: 5,
                      ),
                      const CorazonBTN(),
                      TextWidget(text: '\$500', color: color, textSize: 18, maxlines: 1,)
                    ],),
                  )
                ],
              ),
        ),
        )
      ],),
    );
  }
  Widget _quantityController({
    required Function fct,
    required IconData icon,
    required Color color
  }) {
   return Flexible(
      flex:2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Material(
          color: color,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: (){
              fct();
              },
            child:  Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
