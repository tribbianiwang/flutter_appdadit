import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutterDemo')
        ),
        body: HomeContent(),
      ),
     theme: ThemeData(
       primarySwatch: Colors.yellow
     ),
    );
  }

}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '你好Flutter4',
        style: TextStyle(
            fontSize: 40.0,
            color:Colors.yellow

          // color:Color.fromRGBO(244, 233, 2143, 0.5),
        ),


        textDirection: TextDirection.rtl,
      ),

    );
  }

}