import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_final/widgets/text_widget.dart';
import 'package:provider/provider.dart';
import '../Proveedor/darkt_tema_proveedor.dart';

class CategoriasWidget extends StatelessWidget {
  CategoriasWidget({Key? key,required this.Assets,required this.imgPath, required this.color}) : super(key: key);
  String Assets, imgPath;
  final Color color;
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkTemaProveedor>(context);
    double _screenWidth = MediaQuery.of(context).size.width;
    final Color color = themeState.getDarktema ? Colors.white: Colors.black;
    return InkWell(
      onTap: (){
        print('Categoria presionada');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: color.withOpacity(0.7),
            width: 4,),
        ),
         child: Column(children: [
           Container(
             height: _screenWidth*0.3,
             width: _screenWidth*0.3,
             decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imgPath,),fit: BoxFit.fill)
             ),
           ),

          TextWidget(text: Assets, color: color, textSize: 20, Estitulo: true,),
         ],),
      ),
    );
  }
}
