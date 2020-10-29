import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登陆'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40,),
            Text('这是一个登录界面，点击登录会执行登录操作'),
            RaisedButton(
              child: Text('立即登录'),
              onPressed: (){
                    Navigator.of(context).pop();
              },
            )


          ],
        ),
      ),
    );
  }
}
