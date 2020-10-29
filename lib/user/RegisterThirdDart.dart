import 'package:flutter/material.dart';
import '../pages/tabs/Tabs.dart';

class RegisterThirdPage extends StatefulWidget {
  @override
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三步-完成注册'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40,),
            Text('输入密码完成注册'),
            RaisedButton(
              child: Text('完成'),
              onPressed: (){
                // Navigator.pushNamed(context, '/registerSecondDart');

                //返回根
                Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(builder: (context)=>new Tabs(index: 2,)),
                    (route)=>route==null);
              },
            )


          ],
        ),
      ),
    );
  }
}
