/*
 * File: chapter5
 * -----
 * Description: 第05节: 酷炫的路由动画

 * -----
 * Created  By: Aim 2020-04-22 17:02:05
 * Modified By: Aim 2020-04-22 19:24:47
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class Chapter5 extends StatelessWidget {
  const Chapter5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirstPage();
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('FirstPage', style: TextStyle(fontSize: 36.0)),
          elevation: 0.0,
        ),
        body: Center(
          child: MaterialButton(
            child: Icon(
              Icons.navigate_next,
              color: Colors.white,
              size: 64.0,
            ),
            onPressed: () {
              Navigator.of(context).push(CustomRoute(SecondPage()));
            },
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: Text(
            'SecondPage',
            style: TextStyle(fontSize: 36.0),
          ),
          backgroundColor: Colors.pinkAccent,
          leading: Container(),
          elevation: 0.0,
        ),
        body: Center(
          child: MaterialButton(
            child: Icon(Icons.navigate_before, color: Colors.white, size: 64.0),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ));
  }
}

class CustomRoute extends PageRouteBuilder {
  final Widget widge;

  CustomRoute(this.widge)
      : super(
            transitionDuration: const Duration(
              seconds: 1,
            ),
            pageBuilder: (context, animation1, ainmation2) {
              return widge;
            },
            transitionsBuilder: (context, animation1, ainmation2, child) {
              // return FadeTransition(
              //   opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //       parent: animation1, curve: Curves.fastOutSlowIn)),
              //   child: child,
              // );

              // return ScaleTransition(
              //   scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //       parent: animation1, curve: Curves.fastOutSlowIn)),
              //   child: child,
              // );

              // return RotationTransition(
              //     turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //         parent: animation1, curve: Curves.fastOutSlowIn)),
              //     child: ScaleTransition(
              //       scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //           parent: animation1, curve: Curves.fastOutSlowIn)),
              //       child: child,
              //     ));

              return SlideTransition(
                position: Tween<Offset>(
                        begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
                        parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );
            });
}
