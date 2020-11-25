import 'package:flutter/material.dart';


class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Tab Bar"),
          centerTitle: true,
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.deepOrange,Colors.white70]),
              borderRadius: BorderRadius.circular(50),
              color: Colors.amberAccent,
            ),
            tabs: [
              Tab(child: Text("GAMES"),),
              Tab(child: Text("NEWS"),),
              Tab(child: Text("MOVIES"),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: Text("Hello Ahmer!",style: TextStyle(fontSize: 30.0),),
              ),
              color: Colors.greenAccent,),
            Container(
              child: Center(
                child: Text("KARL MARX!",style: TextStyle(fontSize: 30.0),),
              ),
              color: Colors.amber,),
            Container(
              child: Center(
                child: Text("MARXISM!",style: TextStyle(fontSize: 30.0),),
              ),
              color: Colors.deepPurple,),
          ],
        ),
      ),
    );
  }
}
