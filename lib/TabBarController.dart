import 'package:flutter/material.dart';

class TabBarControllerpage extends StatefulWidget {
  @override
  _TabBarControllerpageState createState() => _TabBarControllerpageState();
}

class _TabBarControllerpageState extends State<TabBarControllerpage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  
  @override
  void initState() {
    
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener((){
      print(_tabController.index);
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerpage"),
        bottom: TabBar(
             controller: this._tabController,
              tabs: <Widget>[
                Tab(text:"热销"),
                Tab(text:"推荐")
              ],
             ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(child:Text('热销')),
          Center(child:Text('推荐'))
        ],
      ),
    );
  }
}
