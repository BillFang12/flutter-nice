import 'package:flutter/material.dart';

//自定义的dart
import 'package:flutter_nice/common/color_constant.dart';
import 'package:flutter_nice/app.dart';


void main() => runApp(new App());

typedef SizeCallBack<P,Void> =Function (P par);

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "微信APP",
      theme: ThemeData(
          primaryColor: ColorContant.white,
          textTheme: TextTheme(
            button: TextStyle(
              fontSize: 14.0,
              color: Colors.lightBlue
            )
          )
      ),
      home: WeixinApp(),
      initialRoute: "初始化APP路由",
    );
  }

}

