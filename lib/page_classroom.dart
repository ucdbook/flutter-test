import 'dart:ffi';
import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'widgets/myAppBar.dart';

class PageClassRoom extends StatefulWidget {
  String _title;

  PageClassRoom(this._title);

  @override
  _PageClassRoomState createState() => _PageClassRoomState();
}

class _PageClassRoomState extends State<PageClassRoom> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppBar(
        leading: FlatButton(
          child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Icon(
                  Icons.chevron_left,
                  size: 30,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              Container(
                width: 80,
                margin: EdgeInsets.only(left: 25, right: 0, top: 5),
                child: Text('首页', style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),),
              ),
            ],
          ),
          padding: EdgeInsets.only(left:0, right: 0),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
        title: Text('${widget._title}课堂'),
      ),
      body: Center(
        child: Text(
          '${widget._title}课堂内容',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}