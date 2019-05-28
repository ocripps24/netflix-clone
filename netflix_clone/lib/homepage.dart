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

  TextStyle topMenuStyle = new TextStyle(fontFamily: 'Avenir', fontSize: 12, color: Colors.white, fontWeight: FontWeight.w200);

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.red,
      child: ListView(
        children: <Widget>[
          Container(
            height: 778,
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Series', style: topMenuStyle,),
                      Text('Films', style: topMenuStyle,),
                      Text('My List', style: topMenuStyle,),
                    ], // Widget[]
                  ), // Row
                ), // Center
                // Center(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: <Widget>[
                //       Text('Series', style: topMenuStyle,),
                //       Text('Films', style: topMenuStyle,),
                //       Text('My List', style: topMenuStyle,),
                    ], // Widget[]
                  ), // Row
                ), // Center
              ], // Widget[]
            ), // Column
          ), // Container
        ], // Widget[]
      ), // ListView
    ); // Container
  }
}
