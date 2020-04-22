/*
 * File: bottom_appbar.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-04-22 16:12:51
 * Modified By: Aim 2020-04-22 16:48:56
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';
import 'package:flutter_examples/pages/chapter3/each_view.dart';

class BottomAppBarPage extends StatefulWidget {
  BottomAppBarPage({Key key}) : super(key: key);

  @override
  _BottomAppBarPageState createState() => _BottomAppBarPageState();
}

class _BottomAppBarPageState extends State<BottomAppBarPage> {
  List<Widget> _eachView = [
    EachView(title: 'HOME'),
    EachView(title: 'ME'),
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return EachView(
              title: 'NewPage',
            );
          }));
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _index = 0;
                  });
                }),
            IconButton(
                icon: Icon(Icons.airport_shuttle),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _index = 1;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
