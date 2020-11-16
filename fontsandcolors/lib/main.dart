import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        accentColor: Colors.purple
      ),
      home: mainScreen(),
    );
  }
}

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {

  void showalertdialog(){
     showDialog(
       context: context,
       builder: (context)=> AlertDialog(

         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10.0),
         ),
         title: Text("Add Some Book Name"),
         content: Column(
           children: [
             TextField(),
             Row(
               children: [
                 RaisedButton(
                   child: Text("Add"),
                   onPressed: ()=>print("jj"),
                 ),
               ],
             ),
           ],
         ),
       ),
     );
  }


   Widget mycard(String task){
     return Card(
       elevation: 5.0,
       margin: EdgeInsets.symmetric(
         horizontal: 10.0,
         vertical: 5.0
       ),
       child: Container(
         padding: EdgeInsets.all(8.0),
         child: ListTile(
           title: Text("$task"),
           onLongPress: (){},
         ),
       ),

     );
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("E-Library"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(Icons.add),
        onPressed: showalertdialog,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            mycard("Socialism and Islam"),
            mycard("Faiz-A Born Socialist"),
            mycard("Inqilaab e Iran\nInqilaab e Russ"),
            mycard("Who is Who?"),
            mycard("Das Kapital\nA Brief History of Islam and Revolution"),
            mycard("Sadequain! A piece of Art!"),
            mycard("Hello Ahmer!"),
            mycard("Josh Malihabadi Poetry\nMir Anees"),


          ],
        ),
      ),
    );
  }
}
