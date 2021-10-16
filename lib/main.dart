import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = TextButton.styleFrom(
      minimumSize: Size(60, 30),
      backgroundColor: Colors.red,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Builder(builder: (BuildContext ctx) {//위젯의 BuildContext를 갖는 부모-자식 관계의 자식 위젯을 리턴.
        return Center(
          child: TextButton(//원래 FlatButton이였던 Text가 쓰여져 있는 일반적인 버튼 위젯.
            //눌렀을 때 기능 구현.
            onPressed: (){
            //현재 주어진 context에서 위로 올라가면서 가장 가까운 Scaffold를 반환. (단 Builder가 없을 경우, Scaffold가 어디에 있는지 찾을 수 없을 수 있음)
            ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(//ToastText 같은 위젯. 화면 하단부에 출력됨.
              //표시될 내용.
              content: Text('Hello'),));
            },
            //버튼에 쓰여질 Text 위젯을 인자로 사용.
            child: Text('Show me',
              //ButtonStyle을 인자로 사용. 버튼의 내용을 꾸밈.
              style: TextStyle(
                color: Colors.white,
              ),
            ),
              style: buttonStyle),
        );
      },)
    );
  }
}

