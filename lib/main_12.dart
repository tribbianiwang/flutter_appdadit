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
        body:Center(
          child:Container(
            height: 180,
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                    width: 180.0,
                    color:Colors.deepOrange
                ),
                Container(

                    width: 180.0,
                    color:Colors.deepPurpleAccent,
                  child: ListView(
                    children: <Widget>[
                      Image.network("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2621038906.webp"),
                      Text('我是一个文本')
                    ],
                  ),

                ),
                Container(
                    width: 180.0,
                    color:Colors.red
                ),
                Container(
                    width: 180.0,
                    color:Colors.green
                )

              ],

            ),

          )

        ),
      ),
    );
  }

}