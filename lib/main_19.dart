import 'package:flutter/material.dart';
import 'listdata.dart';
void main(){

  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter demo"),
        ),
        body:HomeContent(),
      ),
    );
  }

}

class HomeContent extends StatelessWidget{

   Widget _getListData(context,index){
     return Container(
       child: Column(
         children: <Widget>[
           Image.network(listData[index]['imageUrl']),
           SizedBox(height: 12),
           Text(
             listData[index]['title'],
             textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 20
             ),
           )
         ],

       ),

     );
   }


  @override
  Widget build(BuildContext context) {

    // return GridView.count(
    //   crossAxisSpacing: 20.0,//水平距离
    //   mainAxisSpacing: 10.0,//垂直距离
    //   // padding: EdgeInsets.all(10),
    //   crossAxisCoun t: 2,
    //   // childAspectRatio: 0.7,//宽高比0.7
    //   children:_getListData()

    // );

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 20.0,//水平距离
          mainAxisSpacing: 10.0,//垂直距离
          // padding: EdgeInsets.all(10),
          crossAxisCount: 2,
      ),
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }

}