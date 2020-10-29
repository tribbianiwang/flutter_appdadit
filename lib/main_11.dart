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
        body: Center(
          child: ListView(
            padding: EdgeInsets.all(10),

            children: <Widget>[
              Image.network('https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2621473195.webp'),
              Container(
                child: Text('我是一个文本',
                textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28
                  ),
                ),
                height: 40,
                padding: EdgeInsets.fromLTRB(0, 10,0,10),

              ),
              Image.network('https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2621038906.webp'),
              Image.network('https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2620392435.webp'),
              Image.network('https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2621473195.webp'),

            ],

          ),
        ),
      ),
    );
  }

}