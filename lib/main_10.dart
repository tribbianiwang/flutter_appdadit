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
                leading: Image.network('https://img9.doubanio.com/view/subject/s/public/s28342615.jpg'),
                title: Text('帕帕斯塔索普洛斯2'),
                subtitle: Text('格罗斯科罗伊茨2'),
                trailing:  Icon(Icons.settings,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
              ListTile(
                leading: Image.network('https://img9.doubanio.com/view/subject/s/public/s28342615.jpg'),
                title: Text('帕帕斯塔索普洛斯2'),
                subtitle: Text('格罗斯科罗伊茨2'),
              ),
              ListTile(
               leading:Image.network('https://img9.doubanio.com/view/subject/s/public/s28342615.jpg'),
                title: Text('帕帕斯塔索普洛斯2'),
                subtitle: Text('格罗斯科罗伊茨2'),
                trailing: Image.network('https://img9.doubanio.com/view/subject/s/public/s28342615.jpg'),
              ),

            ],

          ),
        ),
      ),
    );
  }

}