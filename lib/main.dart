import 'package:flutter/material.dart';
import 'package:flutter_appdadit/pages/tabs/Search.dart';
import 'pages/tabs/Tabs.dart';
import 'pages/tabs/Form.dart';
import 'pages/tabs/Setting.dart';
import 'routes/Routes.dart';

void main(){

  runApp(MyApp());
}


class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      // home:Tabs(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',//初始化时加载的路由
      onGenerateRoute:onGenerateRoute

    );
  }

}


