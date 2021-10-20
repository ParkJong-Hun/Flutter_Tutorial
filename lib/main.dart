import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'ScreenA.dart';
import 'ScreenB.dart';
import 'ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //초기 화면의 route (home과 충돌됨)
      initialRoute: '/',// Root Route
      routes: {
        //각각의 루트를 지정. ‘루트명’ : (context) => 위젯(); 형식으로 진행됨.
        '/' : (context) => ScreenA(), // '/'는 ScreenA를 불러온다는 의미.
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC(),
      },
    );
  }
}