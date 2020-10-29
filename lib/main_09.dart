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

              ListTile(
                title: Text('帕帕斯塔索普洛斯1',
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
                subtitle: Text('格罗斯科罗伊茨1'),

              ),
              ListTile(
                title: Text('帕帕斯塔索普洛斯2'),
                subtitle: Text('格罗斯科罗伊茨2'),
              ),
              ListTile(
                title: Text('帕帕斯塔索普洛斯3'),
                subtitle: Text('格罗斯科罗伊茨3'),
              ),
              ListTile(
                title: Text('帕帕斯塔索普洛斯4'),
                subtitle: Text('格罗斯科罗伊茨4'),
              ),
              ListTile(
                title: Text('帕帕斯塔索普洛斯5'),
                subtitle: Text('格罗斯科罗伊茨5'),
              )



            ],

          ),
        ),
      ),
    );
  }

}