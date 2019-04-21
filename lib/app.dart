import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_nice/weixin.dart';
import 'package:flutter_nice/find.dart';
import 'package:flutter_nice/friend.dart';
import 'package:flutter_nice/mine.dart';

class WeixinApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _WeixinAppState();
  }
}

class _WeixinAppState extends State<WeixinApp>{

  int _currentIndex=0;

  final  _pages=[
    WeixinPage(),
    FriendPage(),
    FindPage(),
    MinePage()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: _pages[_currentIndex],
        ),
        bottomNavigationBar: CupertinoTabBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("img/weixin.png"),
              title: Text("微信",textAlign: TextAlign.center,style: TextStyle(
                fontSize: 15.0
              ),),
              activeIcon: Image.asset("weixin_select.png"),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("img/friend.png"),
              title: Text("通讯录",textAlign: TextAlign.center,style: TextStyle(
                fontSize: 15.0
              ),),
              activeIcon: Image.asset("img/friend_select.png"),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("img/find.png"),
              title: Text("发现",textAlign: TextAlign.center,style: TextStyle(
                fontSize: 15.0
              ),),
               activeIcon:Image.asset("img/find_select.png"),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("img/mine.png"),
              title: Text("我的",textAlign: TextAlign.center,style: TextStyle(
                fontSize: 15.0
              ),),
              activeIcon:Image.asset("img/mine_select.png"),
            )
          ],
          onTap: (index){
            setState(() {
              _currentIndex=index;
              //_jumpPage(index);
            });
          },
          activeColor: Colors.green,
        ),
    );
  }
}