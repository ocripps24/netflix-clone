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
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
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
            makePopularWidget("Popular on Netflix"),
            makePopularWidget("Trending Now"),
          ], // Widget[]
        ), // ListView
      ), // Center
    ); // Container
  }

  Widget makePopularWidget(String title) {
    return new Container(
      height: 220,
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(title, style: topMenuStyle),
              ], // <Widget>[]
            ), // Row
          ), // Expanded
          Container(
            height: 200,
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

  int counter = 0;
  List<Widget> makeContainers() {
    List<Container> movieList = [];
    for (int i = 0; i < 12; i++) {
      counter++;
      movieList.add(new Container(
        padding: EdgeInsets.all(5),
        height: 200,
        // width: 120,
        child: Image(
          image: AssetImage("lib/assets/" + i.toString() + ".jpg"),
        ), // Image
      )); // Container
    }
    return movieList;
  }
}
