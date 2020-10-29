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

    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(

                child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover,),
                aspectRatio: 16/9,
              ),

              ListTile(
                leading: ClipOval(
                  child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover,height: 60,width: 60,),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxxx"),

              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(

                child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover,),
                aspectRatio: 16/9,
              ),

              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://www.itying.com/images/flutter/2.png"),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxxx"),

              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(

                child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover,),
                aspectRatio: 16/9,
              ),

              ListTile(
                leading: ClipOval(
                  child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover,height: 60,width: 60,),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxxx"),

              )
            ],
          ),
        )
      ],
    );
  }

}