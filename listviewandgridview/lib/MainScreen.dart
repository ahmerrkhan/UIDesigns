import 'package:flutter/material.dart';
import '_listview.dart';
import '_gridview.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  // BoxDecoration mydecoration(){
  //   return BoxDecoration(
  //     borderRadius: BorderRadius.all(Radius.circular(100),),
  //   );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView and GridView"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        elevation: 10.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40.0,
              width: 200,
              //decoration: mydecoration(),
              child: FlatButton(
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>_listview()));
                },
                color: Colors.lightGreen,
                child: Center(child: Text("Open ListView!"),),
              ),
            ),
            new SizedBox(height: 20.0,),
            Container(
              height: 40.0,
              width: 200,
              //decoration: mydecoration(),
              child: FlatButton(
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => _gridview()));
                },
                color: Colors.lightGreen,
                child: Center(child: Text("Open GridView!"),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
