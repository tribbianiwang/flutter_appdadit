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
  List<Widget> _getListData(){
    List<Widget> list = new List();
    for(var i=0;i<20;i++){
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
              style: TextStyle(
            color: Colors.red,
                  fontSize: 20,
                 backgroundColor: Colors.blue
        ),
        ),

      ));
    }

    return list.toList();
  }

  @override
  Widget build(BuildContext context) {

    return GridView.count(
      crossAxisSpacing: 20.0,//水平距离
      mainAxisSpacing: 20.0,//垂直距离
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      childAspectRatio: 0.7,//宽高比0.7
      children:_getListData()

    );
  }

}