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
class HomeContent extends StatefulWidget {
  @override
  HomeContent_State createState() => HomeContent_State();
}

class HomeContent_State extends State<HomeContent> {
  int countNum=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200,),
        Chip(
          label: Text('${this.countNum}'),
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('按钮'),
          onPressed: (){
          setState(() {
            this.countNum++;
          });
          },
        )
      ],
    );
  }
}


