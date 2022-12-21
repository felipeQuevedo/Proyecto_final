import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:proyecto_final/Widgets/itemappbar.dart';
import 'package:proyecto_final/Widgets/itembottomnavbar.dart';



class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset("images/1.png", height: 300,),
          ),
             Arc(
               edge: Edge.TOP,
               arcType: ArcType.CONVEY,
               height: 30,
             child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child:  Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(
                        top: 48,
                        bottom: 15
                    ),
                      child: Row(
                        children: const [
                          Text(
                            "titulo del producto",
                            style: TextStyle(
                                fontSize: 28,
                              color: Colors.green,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context,_) => const Icon(
                              Icons.favorite,
                              color: Colors.green,
                            ),
                            onRatingUpdate:(index){} ,
                          ),
                          Row(children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow:[
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0,3)
                                  ),
                                ],),
                              child: const Icon(CupertinoIcons.minus,
                                size: 18,
                                color: Colors.green,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: const Text("01", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow:[
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(0,3)
                                  ),
                                ],),
                              child: const Icon(CupertinoIcons.plus,
                                size: 18,
                              ),
                            )
                          ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      "Zanahorias a buen precio, de buena calidad y felices, las puedes pedir virtualmente o en nuestra tienda fisica",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.green,
                      ),
                    ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Text("Tamaño", style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                           ),
                          ),
                          const SizedBox(width: 10,),
                          Row(
                            children: [
                              for(int i=5; i < 10; i++)
                              Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  i.toString(),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ),
             )
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}