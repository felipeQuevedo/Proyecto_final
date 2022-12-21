import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:project_final/screens/carrito/cart_screen.dart';

import '../screens/carrito/Items.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ListaProductos> _productosModel = <ListaProductos>[];


  final List<ListaProductos> _listaCarro = <ListaProductos>[];

  @override
  void initState() {

    super.initState();
    _productos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.blue[200],
          elevation: 0,
          child: Column(
            children: const [
            ],
          ),
        ),
        backgroundColor: Colors.yellowAccent[100],
        body: ListView.builder(
          itemCount: _productosModel.length,
          itemBuilder: (context, index) {
            var item = _productosModel[index];
            return Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Image(
                        image: NetworkImage(
                            _productosModel[index].imageURL.toString()
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 8
                                ),
                                child: Text(
                                  _productosModel[index].nombre.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 8
                                ),
                                child:
                                Text(_productosModel[index].precio.toString()),
                              ),
                            ],
                          ),
                        )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_listaCarro.contains(item)) {
                              _listaCarro.add(item);
                            } else {
                              _listaCarro.remove(item);
                            }
                          });
                        },
                        icon: (!_listaCarro.contains(item))
                            ? const Icon(Icons.shopping_cart)
                            : const Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.green,
                        ))
                  ],
                ),
              ),
            );
          },
        ));
  }
  void _productos() {
    var list = <ListaProductos>[
      ListaProductos(
          nombre: 'Leche',
          precio: 40000,
          imageURL: 'Assets/1.png',
          id: 1,
          isAdd: false
      ),
      ListaProductos(nombre: 'Zanahoria',
          precio: 16500,
          imageURL: 'Assets/2.png',
          id: 2,
          isAdd: false
      ),
      ListaProductos(nombre: 'Miel',
          precio: 11750,
          imageURL: 'Assets/3.png',
          id: 3,
          isAdd: false
      ),
      ListaProductos(nombre: 'Yougurt',
          precio: 8900,
          imageURL: 'Assets/4.png',
          id: 4,
          isAdd: false
      ),
      ListaProductos(
          nombre: 'Flores',
          precio: 17000,
          imageURL: 'Assets/5.png',
          id: 5,
          isAdd: false
      ),
      ListaProductos(
          nombre: 'Queso',
          precio: 17000,
          imageURL: 'Assets/6.png',
          id: 5,
          isAdd: false
      )
    ];
    setState(() {
      _productosModel = list;
    });
  }
}

