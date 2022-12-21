import 'package:flutter/material.dart';
import 'package:project_final/screens/carrito/cart_screen.dart';
import 'package:project_final/screens/categorias.dart';
import 'package:project_final/screens/pantalla_inicio.dart';
import 'package:project_final/screens/usuario.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:project_final/Proveedor/darkt_tema_proveedor.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 3 ;
  final List<Map<String, dynamic>> _pages = [
    {'page':const PantallaInicio(), 'title':'Pantalla de Inicio'},
    {'page': PantallaCategorias(), 'title':'Pantalla de Categorias'},
    {'page': Carrito, 'title':'Pantalla de Carrito'},
    {'page':const PantallaUsuario(), 'title':'Pantalla de Usuario'},

  ];
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
}
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkTemaProveedor>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(_pages[_selectedIndex]['title'],),
      ),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _selectedPage,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 0 ? IconlyBold.home :IconlyLight.home),
              label:"Inicio",
            ),
            BottomNavigationBarItem(
                icon: Icon( _selectedIndex == 1 ? IconlyBold.category :IconlyLight.category),
                label: "Categorias",
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 2 ? IconlyBold.buy :IconlyLight.buy),
              label:"Carrito",
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 3 ? IconlyBold.user2 :IconlyLight.user2),
              label:"Usuario",
            ),
          ],
      ),
    );
  }
}
