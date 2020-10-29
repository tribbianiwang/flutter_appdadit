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

  Widget _getListData(context,index){
    return ListTile(
      leading: Image.network(listData[index]["imageUrl"]),
      subtitle: Text(listData[index]["author"]),
      title: Text(listData[index]["title"]),
    );
  }


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: listData.length,

      itemBuilder: _getListData,

      // itemBuilder:(context,index){
      //
      // return _getListData(context,index);
      // } ,

    );
  }

}