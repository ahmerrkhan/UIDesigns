import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final _controller1 = new TextEditingController();
  String name1 = "";
  final _controller2 = new TextEditingController();
  String name2 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login UI"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Text(name1),
         new SizedBox(height: 20.0,),
         new Text(name2),
         new SizedBox(height: 20.0,),
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: new TextField(
             controller: _controller1,
             decoration: InputDecoration(

               hintText: 'Enter Email ',
               suffixIcon: Icon(Icons.email_outlined),
               border: new OutlineInputBorder(borderSide: BorderSide(color: Colors.lightBlue,width: 5.0)),
             ),
           ),
         ),
          new SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: new TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter password',
                suffixIcon: Icon(Icons.enhanced_encryption_outlined),
                border: new OutlineInputBorder(borderSide: BorderSide(color: Colors.lightBlue,width: 5.0)),
              ),
              obscureText: true,
            ),
          ),
          new RaisedButton(
            child: Text("Login"),
            color: Colors.lightBlue,
            onPressed: (){setState(() {
              name1 = _controller1.text;
              name2 = _controller2.text;
            });},
              shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
            )
          ),

        ],
      ),
    );
  }
}

