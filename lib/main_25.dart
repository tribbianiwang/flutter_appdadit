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
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三",style: TextStyle(
                  fontSize: 28
                ),),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话xxx"),
              ),
              ListTile(
                title: Text("地址xxx"),
              )

            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("李四",style: TextStyle(
                    fontSize: 28
                ),),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话xxx"),
              ),
              ListTile(
                title: Text("地址xxx"),
              )

            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("王五",style: TextStyle(
                    fontSize: 28
                ),),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话xxx"),
              ),
              ListTile(
                title: Text("地址xxx"),
              )

            ],
          ),
        )

      ],
    );
  }

}