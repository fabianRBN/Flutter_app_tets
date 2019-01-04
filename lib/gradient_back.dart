import 'package:flutter/material.dart';


class GradientBack extends StatelessWidget{

  String titulo = "CNT";
  GradientBack(this.titulo);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors:[

              Colors.lightBlue,
              Colors.blueAccent,
            ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.7),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp
        )
      ),
      child: Text(
        titulo,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold

        ),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }

}