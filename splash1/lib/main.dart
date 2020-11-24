import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(
  new MaterialApp(
    home: Splash(),
  )
    );
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 10,
      routeName: "/",
      image: Image.asset("assets/image/world.jpg"),
      photoSize: 100.0,
      backgroundColor: Colors.black,
      onClick: ()=>print("Hello from pakistan"),
      navigateAfterSeconds: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Splash Screen"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text("This is World"),
      ),
      backgroundColor: Colors.grey,
    );
  }
}

