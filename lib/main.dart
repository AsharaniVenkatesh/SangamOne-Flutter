import 'package:flutter/material.dart';
import 'package:flutter_app/second_screen.dart';

import 'first_scree.dart';
void main(){
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {


  const MyApp({Key? key,}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Learning Flutter'),backgroundColor: Colors.purpleAccent,),

      body: Container(
        child: Column(
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp2()));
            },child: Text('Assignment-1',style: TextStyle(fontSize: 20),),),
            TextButton(onPressed: (){
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
            },child: Text('Assignment-2'),),
            TextButton(onPressed: (){
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
            },child: Text('Assignment-3'),),
            RaisedButton(onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
            },child: Text('Assignment-4'),),
            RaisedButton(onPressed: (){
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
            },child: Text('Assignment-5'),),
          ],
        ),
      )
    );
  }
}
