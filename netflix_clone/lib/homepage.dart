import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {

  TextStyle topMenuStyle = new TextStyle(fontFamily: 'Avenir next', fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600);
  TextStyle buttonInfoStyle = new TextStyle(fontFamily: 'Avenir next', fontSize: 10, color: Colors.white, fontWeight: FontWeight.w600);
  TextStyle buttonBlackStyle = new TextStyle(fontFamily: 'Avenir next', fontSize: 10, color: Colors.black, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return new Container(
      // color: Colors.red,
      child: Center(
        child: ListView(
          children: <Widget>[
            Container(
              height: 500,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("lib/assets/starwars.jpg"),
                  fit: BoxFit.fitWidth
                ), // DecorationImage
              ), // BoxDecoration
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Series', style: topMenuStyle),
                        Text('Films', style: topMenuStyle),
                        Text('My List', style: topMenuStyle),
                      ], // Widget[]
                    ), // Row
                  ), // Container
                ], // Widget[]
              ), // Column
            ), // Container
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.add, color: Colors.white, size: 30),
                        Text("My List", style: buttonInfoStyle)
                      ], // <Widget>[]
                    ), // Column
                    onPressed: () {

                    },
                  ), // FlatButton
                  FlatButton(
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.play_arrow, color: Colors.black),
                        Text("Play", style: buttonBlackStyle)
                      ], // <Widget>[]
                    ), // Row
                    onPressed: () {

                    },
                  ), // FlatButton
                  FlatButton(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.info, color: Colors.white, size: 30),
                        Text("Info", style: buttonInfoStyle)
                      ], // <Widget>[]
                    ), // Column
                    onPressed: () {

                    },
                  ), // FlatButton
                ], // Widget[]
              ), // Row
            ), // Center
          ], // Widget[]
        ), // ListView
      ), // Center
    ); // Container
  }
}
