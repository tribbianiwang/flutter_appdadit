import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBarDemoPage'),
        centerTitle: true,
        // backgroundColor: Colors.red,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: (){
        //     print("menu");
        //   },
        // ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print("search");
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              print("settings");
            },
          )

        ],


      ),

      body: Text('1111'),

    );
  }
}


