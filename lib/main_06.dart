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
          child: Container(
            child: Image.network("https://img1.doubanio.com/view/photo/l/public/p2621114679.webp",
            alignment: Alignment.bottomRight,

              color: Colors.yellow,
              colorBlendMode: BlendMode.colorBurn,
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeatY,
            ),
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.yellow
            ),
          ),
        ),
      ),
    );
  }

}