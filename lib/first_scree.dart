import 'package:flutter/material.dart';
import 'package:flutter_app/second_screen.dart';

/*void main(){
  runApp(MaterialApp(home: MyApp2(),));
}*/

class MyApp2 extends StatefulWidget {


  const MyApp2({Key? key,}) : super(key: key);

  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  TextEditingController tec1 = new TextEditingController();
  TextEditingController tec2 = new TextEditingController();
  TextEditingController tec3 = new TextEditingController();
  TextEditingController tec4 = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FirstScreen'),backgroundColor: Colors.purpleAccent,),

      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              controller: tec1,
              decoration: InputDecoration(
                  hintText: "Enter the name"
              ),
            ),
            TextField(
              controller: tec2,
              decoration: InputDecoration(
                  hintText: "Enter the place"
              ),
            ),
            TextField(
              controller: tec3,
              decoration: InputDecoration(
                  hintText: "Enter the email"
              ),
            ),
            TextField(
              controller: tec4,
              decoration: InputDecoration(
                  hintText: "Enter the phoneno"
              ),
            ),
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  SecondScreen(name : tec1.text, place : tec2.text,email: tec3.text,phoneno: tec4.text, )));
            },
              child: Text('Go To Second Screen',),
            )
          ],
        ),
      ),
    );
  }
}
