import 'package:flutter/material.dart';

class ShoppingRowItemWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  const ShoppingRowItemWidget({ this.title, this.imageUrl });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        final snackBar = SnackBar( duration: const Duration(milliseconds: 750),content: Text("$title pressed",));
        Scaffold.of(context).showSnackBar(snackBar);},
      child: Column(
        children: <Widget>[
          Text(title),
          SizedBox(height: 32,),
          Image.network(imageUrl,
          height: 150,
          width: 100,)
        ],
      ),
    );
  }
}

