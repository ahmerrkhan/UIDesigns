import 'package:flutter/material.dart';
import 'Screen2.dart';


class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: FlatButton(
          child: Text("Next Screen"),
          color: Colors.deepOrange,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Screen2()));
          },
        ),
      ),
    );
  }
}
