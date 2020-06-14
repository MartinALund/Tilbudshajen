import 'package:Tilbudshajen/models/ShoppingItem.dart';
import 'package:flutter/material.dart';

class ShoppingRowItemWidget extends StatelessWidget {

  final ShoppingItem shoppingItem;

  const ShoppingRowItemWidget({this.shoppingItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        final snackBar = SnackBar( duration: const Duration(milliseconds: 750),content: Text(shoppingItem.title + "pressed",));
        Scaffold.of(context).showSnackBar(snackBar);},
      onDoubleTap: (){
        final snackBar = SnackBar( duration: const Duration(milliseconds: 750),content: Text("Double pressed"));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Column(
        children: <Widget>[
          Text(shoppingItem.title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),),
          Text("Pris: " + shoppingItem.price.toString() + " DKK"),
          SizedBox(height: 8,),
          Image.network(shoppingItem.imageUrl,
          height: 150,
          width: 100,)
        ],
      ),
    );
  }
}

