import 'package:flutter/material.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Tabbar"),
          bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
            Text("Home",style: TextStyle(color: Colors.white),),
            Text("Favorite",style: TextStyle(color: Colors.white),),
            Text("Profile",style: TextStyle(color: Colors.white),),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text("This is home page"),),
          Center(child: Text("This is favorite page"),),
          Center(child: Text("This is profile page"),),
        ]),
      ),
    );
  }
}
