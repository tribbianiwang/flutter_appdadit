import 'package:flutter/material.dart';
class FieldDemo extends StatefulWidget {
  @override
  _FieldDemoState createState() => _FieldDemoState();
}

class _FieldDemoState extends State<FieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("fieldDemo"),),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                hintText: "请输入搜索的内容",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "多行文本框",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "密码框",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "用户名"
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "密码"
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon:Icon(Icons.person),
                hintText:"请输入用户名"
              ),
            )
          ],
        ),

      ),
    );
  }
}
