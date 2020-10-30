import 'package:flutter/material.dart';
class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkbox"),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

           Row(children: <Widget>[

             Checkbox(
               value: this.flag,
               activeColor: Colors.red,
               onChanged: (value){
                 setState(() {
                   this.flag = value;
                 });

             },),

           ],),
          Row(
            children: <Widget>[
              Text(this.flag?"选中":"未选中"),
            ],
          ),
          SizedBox(height: 40,),

          CheckboxListTile(
            value: this.flag,
            onChanged: (value){
              setState(() {
                this.flag = value;
              });
            },
            title: Text("标题"),
            subtitle: Text("这是一个二级标题"),
            secondary: Icon(Icons.radio),
            selected: this.flag,

          ),


        ],
      ),
    );
  }
}
