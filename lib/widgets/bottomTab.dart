import 'package:flutter/material.dart';

class BottomTabWidget {
  main(BuildContext context, String type) {
    return _getBottomWidget(context, type);
  }

  Color _getCurrColor(BuildContext context, String key, String type) {
    Color colorName = Colors.grey;
    if(key == type) {
      colorName = Theme.of(context).primaryColor;
    }
    return colorName;
  }

  Widget _getBottomWidget(BuildContext context, String type) {
    return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.list,
                  color: _getCurrColor(context, 'home', type),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2),
                  child: Text(
                    "课程",
                    style: TextStyle(
                        color: _getCurrColor(context, 'home', type),
                        fontSize: 11),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Icon(
                Icons.person_outline,
                color: _getCurrColor(context, 'mine', type),
              ),
                Container(
                  margin: EdgeInsets.only(top: 2),
                  child: Text(
                    "我的",
                    style: TextStyle(color: _getCurrColor(context, 'mine', type), fontSize: 11),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

