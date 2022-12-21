import 'package:flutter/material.dart';
import 'package:project_final/consts/datos_tema.dart';
import 'package:project_final/inner_scren/en_venta_screen.dart';
import 'package:project_final/screens/bottm_bar.dart';
import 'package:project_final/screens/pantalla_inicio.dart';
import 'package:provider/provider.dart';
import 'package:project_final/Proveedor/darkt_tema_proveedor.dart';

import 'inner_scren/comida_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
DarkTemaProveedor themeChangeProvider = DarkTemaProveedor();

  void getCurrentAppTheme() async{
    themeChangeProvider.setDarkTema =
    await themeChangeProvider.darkThemePrefs.getTheme();
  }
  @override
  void initState (){
    getCurrentAppTheme();
    super.initState();
  }
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_){
          return themeChangeProvider;
        })
      ],
      child: Consumer<DarkTemaProveedor>(
        builder: (context , themeProvider, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: Styles.themeData(themeProvider.getDarktema, context),
              home: const BottomBarScreen(),
              routes: {
                enVentaScreen.routeName: (ctx) => const enVentaScreen(),
                ComidasScreen.routeName: (ctx) => const ComidasScreen(),
              }
          );
        })
    );
  }
}

