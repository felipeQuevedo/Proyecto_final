import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:project_final/inner_scren/comida_screen.dart';
import 'package:project_final/inner_scren/en_venta_screen.dart';
import 'package:project_final/servicios/Utilidades.dart';
import 'package:project_final/servicios/global_methods.dart';
import 'package:project_final/widgets/alimentos_items.dart';
import 'package:project_final/widgets/en_venta_widgets.dart';

import '../widgets/text_widget.dart';


class PantallaInicio extends StatefulWidget {
  const PantallaInicio({Key? key}) : super(key: key);

  @override
  State<PantallaInicio> createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {

  final List<String> _offerImages = [
    'Assets/ovos - hub.jpg',
    'Assets/productos-lacteos.jpg',
    'Assets/leche-bronca-que-es.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context);
    final themeState = utils.getTheme;
    final Color color = Utils(context).color;
    Size size = utils.getScreenSize;


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
          SizedBox(
          height: size.height * 0.30,
            child:Swiper(
    itemBuilder:(BuildContext context,int index){
        return Image.asset(_offerImages[index],fit: BoxFit.fill,
        );
    },
    autoplay: true,
    itemCount: _offerImages.length,
    pagination: const SwiperPagination(
        alignment: Alignment.bottomCenter,
        builder:  DotSwiperPaginationBuilder(color:Colors.white, activeColor: Colors.green)),
              control: SwiperControl(color: Colors.black),

    ),
    ),
              const SizedBox(
                height: 6,
              ),
              TextButton(
                  onPressed: (){
                    GlobalMethods.navigateTo(
                        ctx: context, routeName: enVentaScreen.routeName);
              },
              child: TextWidget(text:'Ver Todo',
              maxlines: 1,
              color:Colors.blue,
                textSize: 25,
              )
              ),
              Row(
                children: [
                  RotatedBox(
                    quarterTurns: -1,
                    child: Row (children: [
                      TextWidget(text: 'En Venta'.toUpperCase(), color: Colors.red, textSize: 22,
                      ),
                       const SizedBox(width: 5,),
                       const Icon(IconlyLight.discount,color: Colors.red,),
                    ],),
                  ),
                  const SizedBox(
                    width: 8,),
                  Flexible(
                    child: SizedBox(
                      height: size.height*0.24,
                    child: ListView.builder(
                      itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                      return const OnsaleWidget();
                    })
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children: [
                  TextWidget(
                      text: 'Nuestros productos',
                      textSize: 22,
                      color: color
                  ),
                  Spacer(),
                  TextButton(onPressed: (){
                    GlobalMethods.navigateTo(
                        ctx: context, routeName: ComidasScreen.routeName);
                  },
                      child: TextWidget(text:'Explorar Todo',
                        maxlines: 1,
                        color:Colors.blue,
                        textSize: 25,
                      ),
                  ),
                ],),
              ),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
              padding: EdgeInsets.zero,
              //crossAxisSpacing: 10,
              childAspectRatio: size.width / (size.height*0.59),
              children: List.generate(4, (index) {
                return const ComidaWidget();
              }),
              )
        ]
        ),
      )
    );
  }
}
