import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(Netflix());

class Netflix extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      length: 4,
      child: Theme(
        data: ThemeData(
          brightness: Brightness.dark
        ),
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home",),
              Tab(icon: Icon(Icons.search), text: "Search",),
              Tab(icon: Icon(Icons.file_download), text: "Downloads",),
              Tab(icon: Icon(Icons.list), text: "More",),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Color(0xff999999),
            indicatorColor: Colors.transparent
          ),
          body: TabBarView(
            children: [
              HomeView(),
              Center(child: Text("Page 2"),),
              Center(child: Text("Page 3"),),
              Center(child: Text("Page 4"),),
            ],
          ),
        ),
      ),
    );
  }
}
