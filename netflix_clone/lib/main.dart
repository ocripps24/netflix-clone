import 'package:flutter/material.dart';

void main() => runApp(Netflix());

class Netflix extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: NetflixTabBar(),
    );
  }
}

class NetflixTabBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Theme(
        data: ThemeData(
          brightness: Brightness.dark
        ),
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home,), text: "Home",),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Color(0xff999999),
            indicatorColor: Colors.transparent
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Page 1"),),
            ],
          ),
        ),
      ),
    );
  }
}
