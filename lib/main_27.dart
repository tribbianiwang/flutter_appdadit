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


  @override
  Widget build(BuildContext context) {

    return ListView(
      children:listData.map((value){
       return Card(
         margin: EdgeInsets.all(10),
         child: Column(
           children: <Widget>[
             AspectRatio(
               child: Image.network(value['imageUrl'],fit: BoxFit.cover,),
               aspectRatio: 16/9,
             ),

             ListTile(
               leading: CircleAvatar(
                 backgroundImage: NetworkImage(value['imageUrl']),
               ),
               title: Text(value["title"]),
               subtitle: Text(value["author"],maxLines:2,overflow: TextOverflow.ellipsis,),

             )
           ],
         ),
       );


      }).toList()
      



    );
  }

}