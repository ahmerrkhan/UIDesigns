import 'package:flutter/material.dart';

void main()  => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _apptitle = "ADD TWO NUMBERS";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _apptitle,
      home: Addtwo(),
    );
  }
}
class Addtwo extends StatefulWidget {
  @override
  _AddtwoState createState() => _AddtwoState();
}

class _AddtwoState extends State<Addtwo> {
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text("ADD two numbers",style: TextStyle(color: Colors.black),),
      ),
       body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Enter 1 Number",style: TextStyle(fontSize: 15.0),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40.0,width: 70.0,
                  color: Colors.blueAccent,
                  child: TextField(
                    controller: num1,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),

            ]
          ),
          SizedBox(height: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Enter 2 Number",style: TextStyle(fontSize: 15.0),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                 height: 40.0,width: 70.0,
                  color: Colors.blueAccent,
                  child: TextField(
                    controller: num2,
                   decoration: InputDecoration(
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                         color: Colors.black,
                       ),
                     ),
                   ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
            ],
          ),
          RaisedButton(
            color: Colors.blue,
            child: Text("ADD"),
            onPressed: (){
              setState(() {
                int sum = int.parse(num1.text) + int.parse(num2.text);
                result  = sum.toString();
              });
            },
          ),
          Container(
            child: Text(result, style: TextStyle(fontSize: 30.0),),
            color: Colors.grey,
            height: 20.0,width: 70.0,
          ),
        ],
      ),
    );
  }
}

