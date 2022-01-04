import 'package:flutter/material.dart';

class CarDetail extends StatelessWidget{

  final String title;
  final String price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;


  CarDetail({required this.title,
    required this.price,
    required this.color,
    required this.gearbox,
    required this.fuel,
    required this.brand,
    required this.path});

  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar:AppBar(
        actions:[
          IconButton(icon: Icon(Icons.bookmark, size:30,
          color: Theme.of(context).accentColor), onPressed: null,),

          IconButton(icon: Icon(Icons.bookmark, size:30), onPressed: null,),

        ],
      ),
    );
  }
}