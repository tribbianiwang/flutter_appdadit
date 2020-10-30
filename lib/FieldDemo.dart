import 'package:flutter/material.dart';
class FieldDemo extends StatefulWidget {
  @override
  _FieldDemoState createState() => _FieldDemoState();
}

class _FieldDemoState extends State<FieldDemo> {
  var _username = new TextEditingController();
  var _password = new TextEditingController();
  @override
  void initState() {
    super.initState();
    _username.text="初始值";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("fieldDemo"),),
      body: Padding(
        padding: EdgeInsets.all(20),
        // child: TextDemo(),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _username,
              decoration: InputDecoration(
                hintText: "请输入用户名"
              ),
              onChanged: (value){
               _username.text = value;

              },
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              controller: _password,
              decoration: InputDecoration(
                  hintText: "请输入密码"
              ),
              onChanged: (value){
                _password.text = value;

              },
            ),

            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text("登录"),
                onPressed: (){
                  print(this._username.text+"--"+this._password.text);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

