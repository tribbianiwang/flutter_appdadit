import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二步-完成注册'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40,),
            Text('输入验证码'),
            RaisedButton(
              child: Text('下一步'),
              onPressed: (){
                Navigator.pushNamed(context, '/registerThirdDart');
                // Navigator.of(context).pop();
                // Navigator.of(context).pushReplacementNamed("/registerThirdDart");

              },
            )


          ],
        ),
      ),
    );
  }
}
