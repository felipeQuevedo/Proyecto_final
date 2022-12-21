import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:project_final/widgets/en_venta_widgets.dart';
import 'package:project_final/widgets/text_widget.dart';

import '../servicios/Utilidades.dart';

class enVentaScreen extends StatelessWidget {
  static const routeName = "/enVentaScreen";
  const enVentaScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isEmpty = true;
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return Scaffold(
      appBar: AppBar(leading: InkWell(borderRadius: BorderRadius.circular(12),
        onTap: (){
        Navigator.pop(context);
        },
        child: Icon(IconlyLight.arrowLeft2,
            color: color,
        ),
      ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
          text:'Productos a la venta',
          color: color,
          textSize: 24.0,
          Estitulo: true,
        ),
        ),
      body:  _isEmpty?
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset('Assets/caja.png'),
            ),
            Text(
              'No hay productos aun!,\nMantenganse al tanto',
            textAlign: TextAlign.center,
            style: TextStyle(color: color, fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      )
          : GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.zero,
        //crossAxisSpacing: 10,
        childAspectRatio: size.width / (size.height*0.45),
        children: List.generate(16, (index) {
          return const OnsaleWidget();
        }),
      ),
    );
  }
}
