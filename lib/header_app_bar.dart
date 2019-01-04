import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final header = Stack(
      children: <Widget>[
        GradientBack("Anime"),
        CardImageList()
      ],
    );
    return header;
  }

}