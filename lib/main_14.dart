import 'package:flutter/material.dart';
import 'listdata.dart';

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
    var tempList = listData.map((value){
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    }).toList();

    return tempList;

  }

  @override
  Widget build(BuildContext context) {

    return ListView(
      children:this._getData(),

    );
  }

}