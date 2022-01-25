import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';


class SecondScreen extends StatefulWidget {
  final String name;
  final String place;
  final String email;
  final String phoneno;
  const SecondScreen({Key? key,required this.name,required this.place,required this.email,required this.phoneno}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Assignment-1-Output'),backgroundColor: Colors.purpleAccent,),

      body: Container(
        child: Column(
          children: <Widget>[
            Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Text(widget.place,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Text(widget.email,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Text(widget.phoneno,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
            },child: Text('Home'),)

          ],
        ),
      ),
    );
  }
}
