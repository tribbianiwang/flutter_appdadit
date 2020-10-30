import 'package:flutter/material.dart';

class ButtonDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示界面'),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.settings),
            onPressed: (){
              print("setting");
            },

          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.black,size: 40,),
        backgroundColor: Colors.yellow,
        onPressed: (){
          print('floatingActionButton');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('普通按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print('有颜色按钮');
                },
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                child: Text('普通按钮'),
                color: Colors.blue,
                elevation: 10,
                //阴影
                textColor: Colors.white,
                onPressed: () {
                  print('有阴影按钮');
                },
              ),
              SizedBox(width: 10,),
              RaisedButton.icon(
                  onPressed:(){
                    print('按钮图标');
                  },
                  color:Colors.blue,
                  textColor:Colors.white,
                  icon: Icon(Icons.search),
                  label: Text('图标按钮'))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 200,
                child: RaisedButton(
                  child: Text('设置按钮宽度高度'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    print('设置按钮宽度高度');
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text('自适应按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      print('设置按钮宽度高度');
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('圆角的按钮'),
                color:Colors.blue,
                textColor: Colors.white,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                onPressed: (){
                  print('圆角的按钮');
                },
              ),
              Container(
                height: 120,
                child:   RaisedButton(
                  child: Text('圆形按钮'),
                  color:Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.red,
                  elevation: 20,
                  shape: CircleBorder(
                      side:BorderSide(
                          color:Colors.white
                      )
                  ),
                  onPressed: (){
                    print('圆形按钮');
                  },
                ),
              ),
              FlatButton(
                child: Text("按钮"),
                color:Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print('FlatButton');
                },
              ),
              SizedBox(width: 10,),
              OutlineButton(
                child: Text("按钮"),
              )


            ],

          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child:
                Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  child:  OutlineButton(
                    child: Text("注册"),
                    onPressed: (){

                    },
                  ),
                ) ,
              )

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text('登录'),
                    color:Colors.blue,
                    textColor: Colors.white,
                    elevation: 20,
                    onPressed: (){
                      print('登录');
                    },
                  ),
                  RaisedButton(
                    child: Text('注册'),
                    color:Colors.blue,
                    textColor: Colors.white,
                    elevation: 20,
                    onPressed: (){
                      print('注册');
                    },
                  ),
                  MyButton(text: '自定义按钮',height: 60.0,width: 80.0,pressed: (){
                    print('自定义按钮');
                  },)

                ],
              )
            ],
          )


        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final width;
  final height;


  MyButton({this.text='',this.pressed=null, this.width=80, this.height=30});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: this.width,
        height: this.height,
        child:  RaisedButton(
          child: Text(this.text),
          onPressed: pressed,
        ),
      )
     ;
  }
}

