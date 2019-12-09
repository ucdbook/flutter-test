import 'package:flutter/material.dart';
import 'page_business.dart';
import 'page_home.dart';

List tabList = [
  {
    'name': '课程',
    'module': () {
      PageHome('课程');
    },
    'icon': Icon(Icons.home),
    'isTab': true,
  },
  {
    'name': '我的',
    'module': () {
      PageBusiness('我的');
    },
    'icon': Icon(Icons.person_outline),
    'isTab': true,
  }
];