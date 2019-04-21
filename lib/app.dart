import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WeixinApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _WeixinAppState();
  }
}

class _WeixinAppState extends State<WeixinApp>{

  final int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(

        ),
        bottomNavigationBar: CupertinoTabBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("img/weixin.png"),
              title: Text("微信",textAlign: TextAlign.center,style: TextStyle(
                fontSize: 20.0
              ),)
            ),
            BottomNavigationBarItem(
              icon: Image.asset("img/friend.png"),
              title: Text("通讯录",textAlign: TextAlign.center,style: TextStyle(
                fontSize: 20.0
              ),)
            ),
            BottomNavigationBarItem(
              icon: Image.asset("img/find.png"),
              title: Text("发现",textAlign: TextAlign.center,style: TextStyle(
                fontSize: 20.0
              ),)
            ),
            BottomNavigationBarItem(
              icon: Image.asset("img/mine.png"),
              title: Text("我的",textAlign: TextAlign.center,style: TextStyle(
                fontSize: 20.0
              ),)
            )
          ],
          onTap: (index){
            
          },
        ),
    );
  }
}