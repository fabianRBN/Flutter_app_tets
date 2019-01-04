import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImagen;
  String name;

  String comment;

  Review(this.pathImagen, this.name,  this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final user_name = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
          name,
          style: TextStyle(
            fontSize: 15.0
          ),
      ),
    );

    final user_comment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        style: TextStyle(
            fontSize: 15.0
        ),
      ),
    );

    final star = Container (
        margin: EdgeInsets.only(
          bottom: 2.0
        ),

        child: Container(

          child: Icon(
            Icons.star,
            color: Colors.amberAccent,
            size: 15.0,
          ),

        )

    );

    final user_info = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              left: 20.0,
            bottom: 3.0
          ),
          child:Text(
            "1 review - 0 likes",
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.black54
            ),
          ) ,
        ),
        star,star,star
      ],
    );

    final user_details = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        user_name,
        user_info,
        user_comment
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 60.0,
      height: 60.0,
      
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImagen)
        )
      ),
    );
    
    return Row(

      children: <Widget>[
        photo,
        user_details
      ],
    );
  }
  
}