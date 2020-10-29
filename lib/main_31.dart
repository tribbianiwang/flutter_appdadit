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
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("flutter demo"),
      ),
      body:HomeContent(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap:(int index){
          print(index);


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



class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Text("你好Flutter");
  }

}