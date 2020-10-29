import 'package:flutter/material.dart';
import 'Category.dart';
import 'Home.dart';
import 'Setting.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key,this.index=0}):super(key:key);
  @override
  _TabsState createState() => _TabsState(index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex=0;
  _TabsState(index){
    this._currentIndex = index;
  }
  List _pageList=[
    HomePage(),
    CategoryPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   title: Text("flutter demo"),
      // ),
      body:this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        iconSize: 40,
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
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
          )


        ],
      ),

    );
  }
}
