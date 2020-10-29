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
        body:HomeContent(),
      ),
    );
  }

}

class HomeContent extends StatelessWidget{
   int countNum=1;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        SizedBox(height: 200,),
       Text("${this.countNum}"),
       SizedBox(height: 20),
       RaisedButton(
         child: Text("按钮"),
         onPressed: (){
            this.countNum++;
            print(this.countNum);
         },
       )
      ],
    );
  }

}