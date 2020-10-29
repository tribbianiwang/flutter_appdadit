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
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 600.0,
      width: 400.0,
      color: Colors.pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,//主轴
        crossAxisAlignment: CrossAxisAlignment.end,//次轴
        
        children: <Widget>[

          IconContainer(Icons.settings,color:Colors.blue),
          IconContainer(Icons.home,color:Colors.red),
          IconContainer(Icons.add,color:Colors.green)
        ],
      ),
    );



  }

}

class IconContainer extends StatelessWidget{
  double size=32;
  Color color=Colors.white;
  IconData iconData;
  IconContainer(this.iconData,{this.color,this.size}){



  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color:this.color,
      child: Center(
        child: Icon(this.iconData,size: this.size,color:Colors.white,),
      ),
    );
  }

}