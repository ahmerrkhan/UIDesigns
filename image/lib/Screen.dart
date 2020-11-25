import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Faiz Ahmed Faiz"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [

           Text("Faiz - A Born Socialist", style: TextStyle(fontSize: 15.0),),
            Image.asset("assets/Faiz.png"),
          ],
        ),
      ),
    );
  }
}
