import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final lista = Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Review("assets/user-icon.jpg", "Juan zapata", "Hola mundo"),
          new Review("assets/user-icon.jpg", "Fabian T", "sdfasdfdsf"),
          new Review("assets/user-icon.jpg", "Miguel I", "Ok todo bien"),
        ],
      ),

    );

    return lista;
  }

}