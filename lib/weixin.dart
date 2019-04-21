import 'package:flutter/material.dart';


class WeixinPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("微信"),
        centerTitle: true,
        actions: <Widget>[
          Image.asset("img/add_img.png",)
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
                Image.asset("img/person.png"),
                Expanded(
                  child: Text("你的第一个好友"),
                )
            ],
          ),
          Row(
            children: <Widget>[
               
            ],
          )
        ],
      ),
    );
  }
  
}