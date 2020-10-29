import 'package:flutter/material.dart';
import 'Form.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(text:"热销1"),
                    Tab(text:"推荐2"),
                    Tab(text:"推荐3"),
                    Tab(text:"推荐4"),
                    Tab(text:"推荐5"),
                    Tab(text:"推荐6"),
                    Tab(text:"推荐7"),
                  ],

                ),
              )
            ],
          ),

        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第1个tab'),
                ),
                ListTile(
                  title: Text('第1个tab'),
                ),
                ListTile(
                  title: Text('第1个tab'),
                )
              ],

            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第2个tab'),
                ),
                ListTile(
                  title: Text('第2个tab'),
                ),
                ListTile(
                  title: Text('第2个tab'),
                )
              ],

            ),

            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第3个tab'),
                ),
                ListTile(
                  title: Text('第3个tab'),
                ),
                ListTile(
                  title: Text('第3个tab'),
                )
              ],

            ),

            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第4个tab'),
                ),
                ListTile(
                  title: Text('第2个tab'),
                ),
                ListTile(
                  title: Text('第2个tab'),
                )
              ],

            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第5个tab'),
                ),
                ListTile(
                  title: Text('第1个tab'),
                ),
                ListTile(
                  title: Text('第1个tab'),
                )
              ],

            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第6个tab'),
                ),
                ListTile(
                  title: Text('第1个tab'),
                ),
                ListTile(
                  title: Text('第1个tab'),
                )
              ],

            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第7个tab'),
                ),
                ListTile(
                  title: Text('第1个tab'),
                ),
                ListTile(
                  title: Text('第1个tab'),
                )
              ],

            ),


          ],
        ),
      ),
    );
  }
}
