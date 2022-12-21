import 'package:flutter/material.dart';
import 'package:project_final/screens/carrito/Items.dart';

class Carrito extends ChangeNotifier{
  Map<String,item>_items ={};

  late Object null1;
  Map<String, item> get items{
    return{...items};
  }
  int get numeroItems{
    return _items.length;
  }
  double get subTotal{
    var total =0.0;
    items.forEach((key,elementos) => total += elementos.precio *elementos.cantidad);
    return total;
  }
  double get impuesto{
    var total = 0.0;
    total = subTotal*0.19;
    return total;
  }
  double get total {
    var total = 0.0;
    total = subTotal*1.19;
    return total;
  }
  void agregarItem(String producto_Id,
  String nombre,
  double precio,
  String unidad,
  String imagen,
  int cantidad,
      ){
    if(_items.containsKey(producto_Id)){
      _items.update(producto_Id,
          (old) =>item(
            id:old.id,
            nombre:old.nombre,
            precio:old.precio,
            unidad:old.unidad,
            imagen:old.imagen,
            cantidad:old.cantidad+1,
          ),
      );
    }else{
      _items.putIfAbsent(producto_Id, () => item(
        id:producto_Id,
        nombre:nombre,
        precio:precio,
        unidad:unidad,
        imagen:imagen,
        cantidad:1,
      ));
    }
  }
  void removerItem(String producto_Id){
    _items.remove(producto_Id);
  }
  void incrementarItem(String producto_Id){
    if(_items.containsKey(producto_Id)){
      _items.update(producto_Id,
            (old) =>item(
          id:old.id,
          nombre:old.nombre,
          precio:old.precio,
          unidad:old.unidad,
          imagen:old.imagen,
          cantidad:old.cantidad+1,

        ),
      );
    }
  }
  void decrementarItem(String producto_Id){
    if(!_items.containsKey(producto_Id))return;
    if(_items[producto_Id]?.cantidad !=null){
      _items.update(
        producto_Id,
            (old) =>item(
          id:old.id,
          nombre:old.nombre,
          precio:old.precio,
          unidad:old.unidad,
          imagen:old.imagen,
          cantidad:old.cantidad-1,
        ),
      );
    }else{
      _items.remove(producto_Id);
    }
  }
}