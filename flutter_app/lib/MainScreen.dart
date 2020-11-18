import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 20.0),
              child: new Text("Flutter Developer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
            ),
            new SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: new CircleAvatar(
                  backgroundImage: AssetImage("assets/khan.jpeg"),
                  radius: 80.0,
              ),
            ),
            new SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: new Text("Muhammad Ahmer Khan",
                style: TextStyle(fontSize: 25.0,
                fontFamily: 'Pacifico',
                  fontWeight: FontWeight.w200,

                ),
              ),
            ),
            new SizedBox(height: 20.0,),
            new Column(
              children: [
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        child: Icon(MdiIcons.instagram,color: Colors.redAccent
                          ,),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    new Text("ahmerrkhan")
                  ],
                ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(child : Icon(MdiIcons.facebook,color: Colors.blue,),
                    ),),
                    SizedBox(height: 10.0,),
                    new Text("ahmerrkhan")
                  ],
                ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(child: Icon(MdiIcons.linkedin,color: Colors.grey,)),
                    ),
                    SizedBox(height: 20.0,),
                    new Text("ahmerrkhan")
                  ],
                ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(child: Icon(MdiIcons.github)),
                    ),
                    SizedBox(height: 10.0,),
                    new Text("ahmerrkhan")
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Container(
                   height: 150.0,
                    width: 400.0,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Hey! My Name is Muhammad Ahmer khan. I am a passionate Flutter and Kotlin Developer.\n"
                          "Love Poetry, History and Reading\n"
                          "Beside All an Orthodox Marxist and A Socialist!",style: TextStyle(color: Colors.grey,fontSize: 16.0),),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
