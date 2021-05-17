import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(new MaterialApp(
  title:"Cal-Up! Two digit Calculator"
  ,
   debugShowCheckedModeBanner: alse,
   theme: ThemeData.dark().copyWith(
       accentColor: Colors.purple
   ),
  home: Splash(),
));

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      loaderColor: Colors.grey,
      title: new Text("Cal-Up!",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.black),),
      seconds: 10,
      backgroundColor: Colors.greenAccent,
      routeName: "/",
      navigateAfterSeconds: MainScreen(),
    );
  }
}
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  var num1 = 0, num2 = 0, sum = 0;
  TextEditingController t1 = new TextEditingController(text: "0");
  TextEditingController t2 = new TextEditingController(text: "0");

  void addition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void subtraction(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void multiplication(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void division(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void clear(){
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Cal-Up!",style: TextStyle(fontSize: 25.0,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("Output : $sum",style: TextStyle(fontSize: 25.0,fontWeight:FontWeight.bold,color: Colors.greenAccent),),
            new TextField(keyboardType: TextInputType.number,decoration: InputDecoration(hintText: "Enter Number 1"),controller: t1,),
            new TextField(keyboardType: TextInputType.number,decoration: InputDecoration(hintText: "Enter Number 2"),controller: t2,),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MaterialButton(child: Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),onPressed: addition,color: Colors.greenAccent,),
                new MaterialButton(child: Text("-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),onPressed: subtraction,color: Colors.greenAccent,),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MaterialButton(child: Text("*",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),onPressed: multiplication,color: Colors.greenAccent,),
                new MaterialButton(child: Text("/",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),onPressed: division,color: Colors.greenAccent,),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new MaterialButton(child:Text("Clear",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),), onPressed:clear,color: Colors.greenAccent,)
                ],
              ),

          ],
        ),
      ),
    );
  }






