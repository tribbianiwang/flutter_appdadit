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


  //自定义方法
  List<Widget> _getData(){
    List<Widget> list = new List();
    for(var i=0;i<20;i++){
      list.add(ListTile(
            title: Text("我是一个列表$i"),
          ));
    }
    return list;
    //
    // return [ListTile(
    //   title: Text("我是一个列表"),
    // ),
    //   ListTile(
    //     title: Text("我是一个列表"),
    //   ),
    //   ListTile(
    //     title: Text("我是一个列表3"),
    //   )];
  }

  @override
  Widget build(BuildContext context) {

    return ListView(
      children:this._getData(),

    );
  }

}