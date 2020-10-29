import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Tabs(),
    );
  }

}

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("flutter demo"),
      ),
      body:Text("tabbar"),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap:(int index){
          setState(() {
            this._currentIndex=index;
          });


        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title:Text("首页")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title:Text("分类")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title:Text("设置")
          ),

        ],
      ),

    );
  }
}

