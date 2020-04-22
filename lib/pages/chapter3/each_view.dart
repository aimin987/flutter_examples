/*
 * File: each_view.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-04-22 16:38:33
 * Modified By: Aim 2020-04-22 16:52:15
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class EachView extends StatelessWidget {
  EachView({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
