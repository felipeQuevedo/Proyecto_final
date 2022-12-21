import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import '../Proveedor/darkt_tema_proveedor.dart';
import '../widgets/text_widget.dart';

class PantallaUsuario extends StatefulWidget {
  const PantallaUsuario({Key? key}) : super(key: key);

  @override
  State<PantallaUsuario> createState() => _PantallaUsuarioState();
}

class _PantallaUsuarioState extends State<PantallaUsuario> {
final TextEditingController _direccionTextController =
TextEditingController(text: "");
@override
  void dispose() {
  _direccionTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkTemaProveedor>(context);
    final Color color = themeState.getDarktema ? Colors.white : Colors.black;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const SizedBox(
                  height: 15,
                ),
                RichText(
                 text:  TextSpan(
                  text: 'Hola,    ',
                   style: const TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                       TextSpan(
                         text: 'MiNombre',
                         style: TextStyle(
                           color: color,
                           fontSize: 25,
                           fontWeight: FontWeight.normal,
                         ),
                         recognizer: TapGestureRecognizer()..onTap = (){
                           print('Mi nombre esta siendo oprimido');
                         }
                       ),
                     ],
                 ),
                ),
               const SizedBox(
                  height: 5,
                ),
                TextWidget(
                  text:'Gmail@gmail.com',
                  color: color,
                  textSize: 17,
                ),
                const SizedBox(height: 20,),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(height: 20,),
                _listTiles(
                  title: 'Direccion 2',
                  subtitle: 'Mi subtitulo',
                  icon: IconlyLight.profile,
                  onPressed: ()async{
                    await showDialog(context: context, builder: (context){
                      return  AlertDialog(
                        title: const Text('Actualiza tu Dirección'),
                        content: TextField(
                          onChanged: (value){
                            //_direccionTextController.text;
                          },
                          controller:_direccionTextController ,
                          maxLines: 5,
                          decoration: InputDecoration(hintText:'Tu dirección' ),
                        ),
                        actions: [
                          TextButton(onPressed:(){} , child:  Text('Actualiza')),
                        ],
                      );
                    }
                    );
                  },
                  color: color,
                ),
                _listTiles(
                    title: 'Pedidos',
                    icon: IconlyLight.bag,
                    onPressed: (){},
                  color: color,
                ),
                _listTiles(
                    title: 'Favoritos',
                    icon: IconlyLight.heart,
                    onPressed: (){},
                  color: color,
                ),
                _listTiles(
                    title: '¡Olvido su contraseña?',
                    icon: IconlyLight.unlock,
                    onPressed: (){},
                  color: color,
                ),
                _listTiles(
                    title: 'Ultimos Vistos',
                    icon: IconlyLight.show,
                    onPressed: (){},
                  color: color,
                ),
                SwitchListTile(
                  title: TextWidget(
                    text:themeState.getDarktema?'Modo Oscuro':'Modo Claro',
                    color: color,
                    textSize: 20,
                  ),
                  secondary: Icon(themeState.getDarktema
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode_outlined),
                  onChanged: (bool value){
                    setState(() {
                      themeState.setDarkTema = value;
                    });
                  },
                  value: themeState.getDarktema,
                ),
                _listTiles(
                    title: 'Salir',
                    icon: IconlyLight.logout,
                    onPressed: (){
                      _showLogoutDialog();
                    },
                  color: color,),
              ],
            ),
          ),
        ),
      )
    );
  }
Future<void> _showLogoutDialog() async{
  await showDialog(context: context, builder:(context){
    return AlertDialog(
      title: Row(children: const [
        Text('Cerrar Sesión')
      ],),
      content: const Text('¿Quierés cerrar sesión?'),
      actions: [
        TextButton(onPressed: (){
          if(Navigator.canPop(context)){
            Navigator.pop(context);
          }
        }, child: Text('Cancelar'),
        ),
        TextButton(onPressed: (){}, child: Text('Si'))
      ],
    );
  }
  );
}
  Widget _listTiles ({required String title,
    String? subtitle,
    required IconData icon,
    required Function onPressed,
    required Color color,
  }){
    return  ListTile(
      title: Text(
        title,
        style:const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      subtitle:TextWidget(
        color: color ,
        text:subtitle == null ?"": subtitle,
        textSize: 18,
      ),
      leading: Icon(icon),
      trailing: const Icon(IconlyLight.arrowRight2),
      onTap: (){
        onPressed();
      },
    );
  }
}
