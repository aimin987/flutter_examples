/*
 * File: main.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-04-22 16:02:06
 * Modified By: Aim 2020-04-22 19:25:19
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';
import 'package:flutter_examples/chapter.dart';
import 'package:flutter_examples/pages/chapter1/bottom_navigation.dart';
import 'package:flutter_examples/pages/chapter3/bottom_appbar.dart';
import 'package:flutter_examples/pages/chapter5/chapter5.dart';
import 'package:flutter_examples/pages/chapter7/chapter7.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '20个Flutter实例',
      routes: {
        '/': (context) => Home(),
        'chapter1': (context) => BottomNavigation(),
        'chapter3': (context) => BottomAppBarPage(),
        'chapter5': (context) => Chapter5(),
        'chapter7': (context) => Chapter7(),
      },
    );
  }
}

class Cahpter7 {
}

class Home extends StatelessWidget {
  final List<Chapter> _chapters = [
    Chapter('第01节: 底部导航栏制作', 'chapter1'),
    Chapter('第03节: 不规则底部工具栏制作', 'chapter3'),
    Chapter('第05节: 酷炫的路由动画', 'chapter5'),
    Chapter('第07节: 毛玻璃效果制作', 'chapter7'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('20个Flutter实例'),
      ),
      body: Scrollbar(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_chapters[index].title),
                onTap: () {
                  Navigator.of(context).pushNamed(_chapters[index].route,
                      arguments: _chapters[index].title);
                },
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 1,
              );
            },
            itemCount: _chapters.length),
      ),
    );
  }
}
