import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.dark,
      ), // ThemeData
      home: HomeView(),
    ); // MaterialApp
  }
}

class HomeView extends StatelessWidget {

  TextStyle topMenuStyle = new TextStyle(fontFamily: 'Avenir next', fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600);
  TextStyle buttonInfoStyle = new TextStyle(fontFamily: 'Avenir next', fontSize: 10, color: Colors.white, fontWeight: FontWeight.w600);
  // TextStyle buttonBlackStyle = new TextStyle(fontFamily: 'Avenir next', fontSize: 10, color: Colors.black, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Container(
        // color: Colors.red,
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                height: 550,
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
                          Text("Play", style: TextStyle(color: Colors.black))
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
              makeContinueWatchingWidget("Continue Watching for Oliver"),
            ], // Widget[]
          ), // ListView
        ), // Center
      ), // Container
    ); // Material
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
              children: makeContainers()
            ), // ListView
          ), // Container
        ], // <Widget>[]
      ), // Column
    ); // Container
  }

  Widget makeContinueWatchingWidget(String title) {
    return new Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      height: 220,
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
              children: makeContinueContainers()
            ), // ListView
          ), // Container
        ], // <Widget>[]
      ), // Container
    ); // Container
  }

  int counter = 0;
  List<Widget> makeContainers() {
    List<Container> movieList = [];
    for (int i = 0; i < 6; i++) {
      counter++;
      movieList.add(new Container(
        padding: EdgeInsets.all(5),
        height: 200,
        child: Image(
          image: AssetImage("lib/assets/" + counter.toString() + ".jpg"),
        ), // Image
      )); // Container
      if (counter == 12) {
        counter = 0;
      }
    }
    return movieList;
  }

  List<Widget> makeContinueContainers() {
    List<Container> movieList = [];
    for (int i = 1; i < 7; i++) {
      counter ++;
      movieList.add(new Container(
        padding: EdgeInsets.all(2),
        height: 200,

        child: Column(
          children: <Widget>[
            Container(
              height: 140,
              width: 100,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("lib/assets/" + counter.toString() + ".jpg"),
                  fit: BoxFit.fitHeight
                ), // DecorationImage
              ), // BoxDecoration
              child: Center(
                child: FlatButton(
                  child: Icon(Icons.play_circle_outline, size: 70),
                  onPressed: () {},
                ), // FlatButton
              ), // Center
            ), // Container
            Container(
              height: 30,
              margin: EdgeInsets.all(3),
              padding: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 25),
                    child: Text("S1:E" + i.toString(), style: TextStyle(color: Color(0xffc1c1c1)),),
                  ), // Container
                  Icon(Icons.info, size: 15, color: Color(0xffc1c1c1))
                ], // <Widget>[]
              ), // Row
            ), // Container
          ], // <Widget>[]
        ), // Column
      ));
      if (counter == 12) {
        counter = 1;
      }
    }
    return movieList;
  }
}
