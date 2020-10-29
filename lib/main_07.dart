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
           child: ClipOval(
             child: Image.network("https://img9.doubanio.com/view/subject/l/public/s33672756.jpg"),
           ),
          ),
        ),
      ),
    );
  }

}