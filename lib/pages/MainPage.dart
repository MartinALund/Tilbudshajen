import 'package:Tilbudshajen/widgets/ShoppingRowItemWidget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Center(
                  child: Text('Tilbudshajen',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    )
                  ),
              )),
          SizedBox(height: 32,),
          Image.network(
              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/26653649-0c7d-4840-ab49-9c8e1d7666e1/d7vzmap-2cc6a581-14a2-4473-b135-bf3359502b27.png/v1/fill/w_1192,h_670,strp/day_18_shopping_shark__1_hour__by_omutant2_d7vzmap-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD0xMDgwIiwicGF0aCI6IlwvZlwvMjY2NTM2NDktMGM3ZC00ODQwLWFiNDktOWM4ZTFkNzY2NmUxXC9kN3Z6bWFwLTJjYzZhNTgxLTE0YTItNDQ3My1iMTM1LWJmMzM1OTUwMmIyNy5wbmciLCJ3aWR0aCI6Ijw9MTkyMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.lV2Ds0fp8fQ86E1D8mUwBMxU3DOvbL13bKrByIU1gK0'
          ),
          SizedBox(height: 32,),
          Row(
            children: <Widget>[
              Expanded(
                child:ShoppingRowItemWidget(title: "Test1", imageUrl: "https://cdn.imgbin.com/4/0/4/imgbin-shark-drawing-cartoon-sharks-blue-and-white-shark-illustration-TcZ3JgGBqMZyqg940QsPRbY8f.jpg",),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: ShoppingRowItemWidget(title: "Test2", imageUrl: "https://img.favpng.com/1/22/6/requiem-shark-cartoon-png-favpng-HJCf6ugGmqF03SPi8LkhsT7dK.jpg",),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: ShoppingRowItemWidget(title: "Test3", imageUrl: "https://www.pngitem.com/pimgs/m/292-2923106_transparent-shark-png-transparent-fish-and-shark-cartoon.png",),
              )
            ],)
        ]);
  }
}