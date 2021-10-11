import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PJH Profile",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PJH"),
        //타이틀을 appBar 중앙에 배치할 것인지
        centerTitle: true,
        //appBar의 색상 결정
        backgroundColor: Colors.black54,
        //appBar의 Flat함을 결정
        elevation: 0.0,
      ),
      body: Center(//위젯의 가장자리에 빈 공간을 만듦.
        //Padding의 Argument
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,//축 기준 정렬
          children: [
            Text('Hello'),
            Text('Hello'),
            Text('Hello')
          ],
        ),
      ),
    );
  }
}
