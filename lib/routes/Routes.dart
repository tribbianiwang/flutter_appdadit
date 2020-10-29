import '../pages/tabs/Form.dart';
import '../pages/tabs/Setting.dart';
import '../pages/tabs/Search.dart';
import 'package:flutter/material.dart';
import '../pages/tabs/Tabs.dart';
import '../pages/tabs/Product.dart';
import '../pages/tabs/ProductInfo.dart';
import '../user/Login.dart';
import '../user/RegisterFirst.dart';
import '../user/RegisterSecondDart.dart';
import '../user/RegisterThirdDart.dart';
import '../AppBarDemo.dart';

//配置路由

final routes={
  '/':(context,{arguments})=>Tabs(),
  '/form':(context)=>FormPage(),
  '/search':(context,{arguments})=>SearchPage(arguments:arguments),
  '/product':(context)=>ProductPage(),
  '/productinfo':(context,{arguments})=>ProductInfoPage(arguments:arguments),
  '/login':(context)=>LoginPage(),
  '/registerFirst':(context)=>RegisterFirstPage(),
  '/registerSecondDart':(context)=>RegisterSecondPage(),
  '/registerThirdDart':(context)=>RegisterThirdPage(),
  '/appBarDemo':(context)=>AppBarDemoPage(),


};

//固定写法
var onGenerateRoute =  (RouteSettings settings){
  //统一处理
  final String name = settings.name;
  print(settings.name);
  final Function pageContentBuilder = routes[name];
  if(pageContentBuilder!=null){
    if(settings.arguments !=null){
      final Route route = MaterialPageRoute(
          builder: (context)=>
              pageContentBuilder(context,arguments:settings.arguments)
      );
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder: (context)=>
              pageContentBuilder(context)
      );
      return route;

    }
  }


};