import 'package:flutter/material.dart'

void main() => runApp(Netflix());

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

  @override
  Widget build(BuildContext context) {
    return new Container();
  }
