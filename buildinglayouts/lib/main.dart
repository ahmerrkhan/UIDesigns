import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home : Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Stack(
        children: [
          Container(color: Colors.greenAccent,
          height: 200,),
          Container(color: Colors.yellow,
          height: 100,),
          Container(color: Colors.purple,
          height: 50,),
        ],
      ),
    );
  }
}
