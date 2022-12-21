import 'package:flutter/material.dart';
import 'package:proyecto_final/paginas/HomePage.dart';
import 'package:proyecto_final/paginas/cartpage.dart';
import 'package:proyecto_final/paginas/itempage.dart';


  void main() => runApp(MyApp());

  class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        routes: {
          "/" : (context) => HomePage(),
          "cartPage" : (context) => CardPage(),
          "itemPage" : (context) => ItemPage(),
        },
      );
    }
  }




