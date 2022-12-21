import 'package:flutter/material.dart';
import 'package:project_final/screens/carrito/card_widget.dart';
import 'package:project_final/screens/carrito/Items.dart';
import 'package:project_final/screens/carrito/card_widget.dart';

class Carrito extends StatefulWidget {
  final List<ListaProductos> _cart;


  const Carrito(this._cart, {super.key});

  @override
  _CarritoState createState() => _CarritoState(this._cart);
}

class _CarritoState extends State<Carrito> {
  _CarritoState(this._cart);

  List<ListaProductos> _cart;


  @override
   build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent[200],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Detalles del producto',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {
              _cart.length;
            });
          },
          color: Colors.black,
        ),
      ),
      body: GestureDetector(
          child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _cart.length,
                    itemBuilder: (context, index) {
                      _cart[index].valorcard =
                          _cart[index].cont * _cart[index].precio;
                      return Card(
                        elevation: 5,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 9
                        ),
                        child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Image(
                                        image: NetworkImage(
                                            _cart[index].imageURL.toString()
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            bottom: 8),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 50,
                                                  right: 50
                                              ),
                                              child: Center(
                                                child: Text(
                                                  _cart[index].nombre
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight
                                                          .bold
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 50,
                                                    right: 50
                                                ),
                                                child:Center(
                                                    child:Text(
                                                      _cart[index].precio.toString(),
                                                      style: const TextStyle(
                                                        fontSize: 15,
                                                      ),
                                                    )
                                                )
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if(_cart[index].id == 1)...[
                                      _cart[index].cont != 0
                                          ? IconButton(
                                          icon: const Icon(Icons.remove,
                                            color: Colors.deepOrange,),
                                          onPressed: () =>
                                              setState(() =>
                                              _cart[index].cont--)
                                      )
                                          : Container(),
                                      Text(_cart[index].cont.toString()),
                                      IconButton(
                                          icon: const Icon(Icons.add,
                                            color: Colors.deepOrange,),
                                          onPressed: () =>
                                              setState(() =>
                                              _cart[index].cont++)
                                      ),
                                      Column(
                                        children: [
                                          Text(_cart[index].valorcard.toString(),
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red
                                              )),
                                        ],
                                      )
                                    ] else
                                      if(_cart[index].id == 2)...[
                                        _cart[index].cont != 0
                                            ? IconButton(
                                            icon: const Icon(Icons.remove,
                                              color: Colors.deepOrange,),
                                            onPressed: () =>
                                                setState(() =>
                                                _cart[index].cont--)
                                        )
                                            : Container(),
                                        Text(_cart[index].cont.toString()),
                                        IconButton(
                                            icon: const Icon(Icons.add,
                                              color: Colors.deepOrange,),
                                            onPressed: () =>
                                                setState(() =>
                                                _cart[index].cont++)
                                        ),
                                        Column(
                                          children: [
                                            Text(_cart[index].valorcard.toString(),
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red
                                                )),
                                          ],
                                        )
                                      ] else
                                        if(_cart[index].id == 3)...[
                                          _cart[index].cont != 0
                                              ? IconButton(
                                              icon: const Icon(Icons.remove,
                                                color: Colors.deepOrange,),
                                              onPressed: () =>
                                                  setState(() =>
                                                  _cart[index].cont--)
                                          )
                                              : Container(),
                                          Text(_cart[index].cont.toString()),
                                          IconButton(
                                              icon: const Icon(Icons.add,
                                                color: Colors.deepOrange,),
                                              onPressed: () =>
                                                  setState(() =>
                                                  _cart[index].cont++)
                                          ),
                                          Column(
                                            children: [
                                              Text(_cart[index].valorcard.toString(),
                                                  style: const TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      color: Colors.red
                                                  )),
                                            ],
                                          )
                                        ] else
                                          if(_cart[index].id == 4)...[
                                            _cart[index].cont != 0
                                                ? IconButton(
                                                icon: const Icon(Icons.remove,
                                                  color: Colors.deepOrange,),
                                                onPressed: () =>
                                                    setState(() =>
                                                    _cart[index].cont--)
                                            )
                                                : Container(),
                                            Text(_cart[index].cont.toString()),
                                            IconButton(
                                                icon: const Icon(Icons.add,
                                                  color: Colors.deepOrange,),
                                                onPressed: () =>
                                                    setState(() =>
                                                    _cart[index].cont++)
                                            ),
                                            Column(
                                              children: [
                                                Text(_cart[index].valorcard.toString(),
                                                    style: const TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        color: Colors.red
                                                    )),
                                              ],
                                            )
                                          ] else
                                            if(_cart[index].id == 5)...[
                                              _cart[index].cont != 0
                                                  ? IconButton(
                                                  icon: const Icon(Icons.remove,
                                                    color: Colors.deepOrange,),
                                                  onPressed: () =>
                                                      setState(() =>
                                                      _cart[index].cont--)
                                              )
                                                  : Container(),
                                              Text(
                                                  _cart[index].cont.toString()),
                                              IconButton(
                                                  icon: const Icon(Icons.add,
                                                    color: Colors.deepOrange,),
                                                  onPressed: () =>
                                                      setState(() =>
                                                      _cart[index].cont++)
                                              ),
                                              Column(
                                                children: [
                                                  Text(_cart[index].valorcard.toString(),
                                                      style: const TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold,
                                                          color: Colors.red
                                                      )),
                                                ],
                                              )
                                            ]
                                  ]
                              )
                            ]
                        ),
                      );
                    },
                  ),
                  Text(
                    'Iva: \$${pagoiva(_cart)}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                  Text(
                    'Total: \$${totalproduct(_cart)}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),

                ],
              )
          )
      ),
    );
  }

  String totalproduct(List<ListaProductos>_cart) {
    double valortotal = 0;
    for (int i = 0; i < _cart.length; i++) {
      valortotal = valortotal + _cart[i].precio * _cart[i].cont;
    }
    return valortotal.toString();
  }

  String pagoiva(List<ListaProductos>_cart) {
    double valortotal = 0;
    double iva = 0.19;
    double pagoiva = 0;
    for (int i = 0; i < _cart.length; i++) {
      valortotal = valortotal + _cart[i].precio * _cart[i].cont;
    }
    pagoiva = valortotal * iva;
    return pagoiva.toString();
  }
}
