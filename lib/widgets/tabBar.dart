import 'dart:ffi';

import 'package:flutter/material.dart';

class TabBarWidget {
  main(BuildContext context, String type) {
    return _getTabBarWidget(context, type);
  }

  /*Color _getCurrColor(BuildContext context, String key, String type) {
    Color colorName = Colors.grey;
    if(key == type) {
      colorName = Theme.of(context).primaryColor;
    }
    return colorName;
  }*/

  Widget _getTabBarWidget(BuildContext context, String type) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Container(
            child: TabBar(
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: Colors.grey,
              labelPadding: EdgeInsets.fromLTRB(0, 0, 0, 5),
              indicatorWeight: 1,
              indicatorColor: Color.fromRGBO(255, 255, 255, 0),
              onTap: (a) {
                print('---------------78');
                print(a);
              },
              tabs: <Widget>[
                Tab(
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.list,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2),
                        child: Text(
                          "课程",
                          style: TextStyle(fontSize: 11),
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.person_outline,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2),
                        child: Text(
                          "我的",
                          style: TextStyle(fontSize: 11),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

