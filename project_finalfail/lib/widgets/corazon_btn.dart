import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../servicios/Utilidades.dart';

class  CorazonBTN extends StatelessWidget {
  const CorazonBTN ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    return GestureDetector(
      onTap: (){
        print('ha indicado que le gusta');
      },
      child: Icon(
        IconlyLight.heart,
        size: 20,
        color: color,
      ),
    );


  }
}
