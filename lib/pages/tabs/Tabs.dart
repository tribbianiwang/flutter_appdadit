import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'Category.dart';
import 'Home.dart';
import 'Setting.dart';

class Tabs extends StatefulWidget {
  final index;

  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  _TabsState(index) {
    this._currentIndex = index;
  }

  List _pageList = [HomePage(), CategoryPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter demo"),
      ),
      floatingActionButton:Container(
        height: 80,
        width: 80,
        margin: EdgeInsets.only(top:20),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
              color: Colors.white
        ),
        child:  FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print("floating_action_button_adds");
            setState(() {
              this._currentIndex = 1;
            });
          },
          backgroundColor: this._currentIndex==1?Colors.yellow:Colors.red,
        ),

      )
     ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        iconSize: 40,
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置"))

        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                child: UserAccountsDrawerHeader(
                  accountName: Text('王老大'),
                  accountEmail: Text('1130455004@qq.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.itying.com/images/flutter/3.png"),
                  ),
                  decoration: BoxDecoration(
                    image:DecorationImage(
                      image: NetworkImage("https://www.itying.com/images/flutter/4.png"),
                      fit: BoxFit.cover
                    )
                  ),
                  otherAccountsPictures: <Widget>[
                    Image.network("https://www.itying.com/images/flutter/5.png"),
                    Image.network("https://www.itying.com/images/flutter/6.png"),
                    Image.network("https://www.itying.com/images/flutter/7.png")
                  ],

                ),
              )
            ],),

            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('我的空间'),

            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('用户'),
              onTap: (){
                Navigator.of(context).pop();//隐藏侧边栏
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置'),
            ),
            Divider(),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text('右侧侧边栏'),
      ),
    );
  }
}
