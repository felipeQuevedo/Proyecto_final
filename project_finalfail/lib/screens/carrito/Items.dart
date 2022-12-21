import 'package:flutter/material.dart';

class item{
  late String id;
  late String nombre;
  late double precio;
  late String unidad;
  late String imagen;
  late int cantidad;

  item({required this.id, required this.nombre, required this.precio, required this.unidad, required this.imagen,
      required this.cantidad});
  item.map(dynamic o){
    this.id= o['id'];
    this.nombre= o['nombre'];
    this.precio= o['precio'];
    this.unidad= o['unidad'];
    this.imagen= o['imagen'];
    this.cantidad= o['cantidad'];
  }
  Map<String, dynamic> toMap(){
  var map = <String, dynamic>{};
  map['id']=id;
  map['nombre']=nombre;
  map['precio']=precio;
  map['unidad']=unidad;
  map['imagen']=imagen;
  map['cantidad']=cantidad;
  return map;
  }
  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data= new Map<String, dynamic>();
    data['id']= id;
    data['nombre']= nombre;
    data['precio']= precio;
    data['imagen']= imagen;
    data['unida']= unidad;
    data['cantidad']= cantidad;
    return data;
  }
}
class ListaProductos {
  final String nombre;
  final int precio;
  final String imageURL;
  final int id;
  final bool isAdd;
  int xde = 0;
  int cont= 0;
  int valortotal = 0;
  int valorcard = 0;
  ListaProductos({
    required this.nombre,
    required this.precio,
    required this.imageURL,
    required this.id,
    required this.isAdd,

  });

}
