/*
 * File: chapter7.dart
 * -----
 * Description: 第07节: 毛玻璃效果制作

 * -----
 * Created  By: Aim 2020-04-22 19:19:34
 * Modified By: Aim 2020-04-23 10:17:10
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'dart:ui';

import 'package:flutter/material.dart';

class Chapter7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            //约束盒子组件，添加额外的限制条件到 child上。
            constraints: const BoxConstraints.expand(), //限制条件，可扩展的。
            child: Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545738629147&di=22e12a65bbc6c4123ae5596e24dbc5d3&imgtype=0&src=http%3A%2F%2Fpic30.photophoto.cn%2F20140309%2F0034034413812339_b.jpg'),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 400.0,
                    height: 400.0,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
