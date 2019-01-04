import 'package:flutter/material.dart';
import 'button.dart';

class DescriptionPlace extends StatelessWidget{

  String title;
  int starts;
  String descriptions;

  DescriptionPlace(this.title, this.starts, this.descriptions);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star = Container (
      margin: EdgeInsets.only(
        top: 330.0,
        right: 3.0
      ),

      child: Container(
        margin: EdgeInsets.only(
          top: 10.0
        ),
        child: Icon(
          Icons.star,
          color: Colors.amberAccent,
        ),

      )

    );

    final star_boder = Container (
        margin: EdgeInsets.only(
            top: 330.0,
            right: 3.0
        ),

        child: Container(
          margin: EdgeInsets.only(
              top: 10.0
          ),
          child: Icon(
            Icons.star_border,
            color: Colors.amberAccent,
          ),

        )

    );


    final star_half = Container (
        margin: EdgeInsets.only(
            top: 330.0,
            right: 3.0
        ),

        child: Container(
          margin: EdgeInsets.only(
              top: 10.0
          ),
          child: Icon(
            Icons.star_half,
            color: Colors.amberAccent,
          ),

        )

    );

    final description = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: new Text(
        descriptions,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black26
        ),
      ),
    );


    final title_start = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 340.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
              title,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900
              ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_boder

          ],

        )
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_start,
        description,
        Button("Abrir")
      ],
    );
  }

}