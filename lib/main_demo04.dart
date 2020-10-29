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
        body:HomeContent()
      ),
    );
  }

}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        child: Text(
            '的说法来得及饭卡了撒旦教分开上了打飞机上课了打飞机SDK浪费',
          textAlign: TextAlign.left,
          overflow: TextOverflow.clip,
          maxLines: 1,
          textScaleFactor: 1.2,
          style:TextStyle(
            fontSize: 16.0,
            color:Colors.red,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.green,
            decorationStyle: TextDecorationStyle.dashed,
              letterSpacing: 5.0

          ),

        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color:Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2.0
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10)
          )
        ),
        padding: EdgeInsets.fromLTRB(10,30,5,0),
        // transform: Matrix4.translationValues(100, 0, 0),
        // transform: Matrix4.rotationZ(-0.3),
        transform: Matrix4.diagonal3Values(1.2, 1, 3),
        alignment: Alignment.topLeft,
      ),
    );
  }

}