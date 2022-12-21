import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_final/widgets/corazon_btn.dart';
import 'package:project_final/widgets/price_widgets.dart';
import 'package:project_final/widgets/text_widget.dart';

import '../servicios/Utilidades.dart';

class ComidaWidget extends StatefulWidget {

  const ComidaWidget( {Key? key}) : super(key: key);

  @override
  State<ComidaWidget> createState() => _ComidaWidgetState();
}

class _ComidaWidgetState extends State<ComidaWidget>  {
  List<Map<String, dynamic>> catInfo = [
    {'imgPath':'Assets/1.png', 'Assets':'Leche'},
    {'imgPath':'Assets/2.png', 'Assets':'Huevos'},
    {'imgPath':'Assets/3.png', 'Assets':'Lacteos'},
    {'imgPath':'Assets/4.png', 'Assets':'Miel'},
    {'imgPath':'Assets/5.png', 'Assets':'Miel'},
    {'imgPath':'Assets/6.png', 'Assets':'Miel'},
  ];


  late String foto;
  final _quantityTextController = TextEditingController();
  @override
  void initState(){
    _quantityTextController.text='1';
    super.initState();
  }
  @override
  void dispose() {
    _quantityTextController.dispose();
    super.dispose();
  }
 @override
  Widget build(BuildContext){
    Size size = Utils(context).getScreenSize;
    final Color color = Utils(context).color;;
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Material(
      borderRadius: BorderRadius.circular(10),
      color: Theme.of(context).cardColor,
      child: InkWell(onTap: (){},
        borderRadius: BorderRadius.circular(10),
        child: Column(children:<Widget> [
          Image.asset('Assets/1.png',
            height: size.width*0.17,
            width: size.width*0.22,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              TextWidget(
                text: 'text',
                color: color,
                textSize: 10,
                Estitulo:true,
              ),
              const CorazonBTN(),
            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex:4,
                  child: PriceWidget(
                    salePrice: 500,
                    price: 0,
                    textPrice: _quantityTextController.text,
                    isOnSale: true,
                  ),
                ),
                const SizedBox(width: 8,),
                Flexible(
                  child: Row(
                    children: [
                     FittedBox(
                        child: TextWidget(
                            text: 'KG',
                            color: color,
                            textSize: 18,
                            Estitulo:true
                        ),
                      ),
                      const SizedBox(width: 5,
                      ),
                      Flexible(flex: 2,
                          child: TextFormField(
                        controller: _quantityTextController,
                        key: const ValueKey('10'),
                        style:  TextStyle(color: color,fontSize: 17),
                        keyboardType: TextInputType.number,
                        maxLines: 2,
                        enabled: true,
                        onChanged: (valueee){
                          setState(() {

                          });
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0.9.]'),)
                        ],
                      )),

                  ],),
                ),

            ],),
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: TextButton(
                    onPressed: () {},
                     child: TextWidget(
                      text: 'Agregar al Carrito',
                      maxlines: 1,
                      color: color,
                      textSize: 20,
                    ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).cardColor),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12.0)
                      ),
                  ),
                )
              ),
            ),
          )
        ],
        ),
    ),
    ),
  );
  }
}

