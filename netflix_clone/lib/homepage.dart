import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ), // ThemeData
      home: HomeView(),
    ); // MaterialApp
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
              height: 450,
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
                        Container(
                          height: 50,
                          width: 50,
                            child: Image(
                              image: AssetImage("lib/assets/netflix.png")
                            ), // Image
                        ), // Container
                        FlatButton(
                          child: Text('Series', style: topMenuStyle),
                        ), // FlatButton
                        FlatButton(
                          child: Text('Films', style: topMenuStyle),
                        ), // FlatButton
                        FlatButton(
                          child: Text('My List', style: topMenuStyle),
                        ), // FlatButton
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

Widget makePopularWidget() {
  return new Container(
    height: 120,
    child: Column(
      children: <Widget>[
        Text("Popular on Netflix", style: topMenuStyle),
        Container(
          height: 100,
          child: ListView(
            padding: EdgeInsets.all(3),
            scrollDirection: Axis.horizontal,
            //shrinkwrap: true,
            children: makeContainers()
          ), // ListView
        ), // Container
      ], // <Widget>[]
    ), // Column
  ); // Container
}

List<Widget> makeContainers() {
  List<Container> movieList = [];
  for (int i = 0; i < 20; i++) {
    movieList.add(new Container(
      color: Colors.red,
      height: 100,
      width: 60,
      margin: EdgeInsets.all(3),
    )); // Container
  }
}
