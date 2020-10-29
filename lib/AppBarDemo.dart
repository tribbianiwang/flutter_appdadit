import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text:"热门"),
              Tab(text:"推介")
            ],
          ),

        ),
        body:TabBarView(
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
          ],
        ),
      ),
    );
  }
}


