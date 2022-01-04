import 'package:flutter/material.dart';
import 'package:projet/models/car.dart';
import 'package:projet/utils/utils.dart';

class CarsGrid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCars.cars.length,
      itemBuilder:(ctx,i)=>Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.only(top: i.isEven?0:20, bottom: i.isEven? 20:0),
          decoration:BoxDecoration(
            color: Theme.of(context).primaryColor,
            boxShadow: [BoxShadow(color: Colors.black26,
                blurRadius: 5, spreadRadius: 1)]
          ),

          child:Column(
            children:[
              Image.asset(allCars.cars[i].path),
              Text(allCars.cars[i].title,style:BasicHeading,
              ),
               Text((allCars.cars[i].price).toString(),
                style: SubHeading,),
              Text('per month')
            ],
          )
        ),
      ), gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

    );
  }
}

