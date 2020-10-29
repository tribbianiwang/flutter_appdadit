import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter demo"),
        ),
        body: Center(
          child: Container(

            child: Image.asset('images/2.0x/test.jpg',
            fit: BoxFit.fill,
            ),
             height: 300,
            width: 300,

          ),
        ),
      ),
    );
  }

}