import 'package:flutter/material.dart';
import 'package:flutter_appdadit/pages/tabs/Search.dart';
import '../tabs/Setting.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索界面"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, '/search',arguments:{
              "id":123
            } );
          },
          color:Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("跳转到商品页面"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, '/product' );
          },
          color:Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),

        SizedBox(height: 20,),
        RaisedButton(
          child: Text("跳转到AppBar"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, '/appBarDemo');
          },
          color:Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),

        SizedBox(height: 20,),
        RaisedButton(
          child: Text("跳转到tabbarController"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, '/tabBarControllerpage');
          },
          color:Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),

        SizedBox(height: 20,),
        RaisedButton(
          child: Text("点击跳转到Button演示界面"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, '/buttonDemo');
          },
          color:Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),

        SizedBox(height: 20,),
        RaisedButton(
          child: Text("表单演示界面"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, '/fieldDemo');
          },
          color:Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("checkbox界面"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, '/checkboxDemo');
          },
          color:Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("Radio演示界面"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, '/radioDemo');
          },
          color:Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("fromdemo"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, '/FormDemoPage');
          },
          color:Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],

    );
  }
}
