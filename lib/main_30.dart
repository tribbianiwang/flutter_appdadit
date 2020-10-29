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
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List list = new List();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: this.list.map((value){

            return ListTile(
              title: Text(value),
            );
          }).toList()
        ),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text("按钮"),
             onPressed: (){
               setState(() {
                 list.add('新增数据1');
                 list.add('新增数据2');
               });

                 },
            )

          ],


    );
  }
}
