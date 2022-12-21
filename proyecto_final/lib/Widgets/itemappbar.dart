import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color:  Colors.white,
      padding:  EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
              child: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 20),
            child: Text("Producto",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite,
            size: 30,
            color: Colors.red,
          )

        ],
      ),
    );
  }
}