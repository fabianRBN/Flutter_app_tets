import 'package:flutter/material.dart';
import 'description_place.dart';
import 'package:flutter_app/review_list.dart';
import 'header_app_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  String description = "Nanatsu no Taizai es un manga escrito e ilustrado por Nakaba Suzuki, serializado en la revista Weekly Shōnen Magazine desde el 10 de octubre de 2012. Una adaptación a serie de anime por parte del estudio A-1 Pictures se emitió desde el 5 de octubre de 2014 al 29 de marzo de  ";


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Stack(
        /*
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/nt.jpg',
              fit: BoxFit.cover,
              height: 330,
              width: double.infinity,
            ),


            Center(
              child: Container(
                  height: 60.0,
                  color: Colors.black45,
                  child: Center(
                    child: Text('Nanatsu no Taizai',style: TextStyle(color: Colors.white,fontSize:28),),
                  )
              ),
            ),

            new DescriptionPlace( "The best Anime",4,description),
            Container(
              child: new ReviewList(),
            )

          ],
        )*/

        children: <Widget>[
          ListView(
            children: <Widget>[
              DescriptionPlace( "The best Anime",4,description),
              ReviewList()
            ],
          ),
          HeaderAppBar(),

        ],

      ),

    );
  }
}
