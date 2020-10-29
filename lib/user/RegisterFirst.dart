import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册-第一步'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40,),
            Text('这是注册的第一步，请输入您的手机号，然后点击下一步'),
            RaisedButton(
              child: Text('下一步'),
              onPressed: (){
                Navigator.pushNamed(context, '/registerSecondDart');

                //替换路由
                // Navigator.of(context).pushReplacementNamed('/registerSecondDart');
                // Navigator.of(context).pop();
              },
            )


          ],
        ),
      ),
    );
  }
}
