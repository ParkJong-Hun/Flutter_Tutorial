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
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping card button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),
      //Drawer 위젯을 담음.
      drawer: Drawer(//화면 끝에서 책상 서랍처럼 튀어나오는 위젯. 주로 AppBar의 버튼을 클릭해서 나오게 함. .leading에 버튼 생성 안해도 tap 메뉴 생김.
        //Drawer에 담을 위젯.
        child: ListView(//화면에 목록 형식으로 보여지는 위젯.
          //리스트 뷰의 보호 구역 설정.
          padding: EdgeInsets.zero,
          //ListView에 표현될 위젯 집합.
          children: [
            UserAccountsDrawerHeader(//사용자 계정 Drawer 헤더. Flutter에서 지정된 디자인 프레임에 맞춰 화면에 보여지는 위젯.
              //사용자 이미지를 이미지 위젯을 가져와 설정.
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/logo.png'),
                backgroundColor: Colors.white,
              ),
              //다른 계정의 이미지들을 보여줌.
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/zeng.jpg'),
                ),
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: AssetImage('assets/zeng.jpg'),
                // ),
              ],
              //사용자 이름을 Text 위젯을 argument로 이용해 설정.
              accountName: Text('PJH'),
              //사용자 이메일을 Text 위젯을 argument로 이용해 설정.
              accountEmail: Text('thesn515@gmail.com'),
              //세부 설명 버튼을 클릭하면 나오는 이벤트 처리 기능 구현.
              onDetailsPressed: () {
                print('arrow button is clicked');
              },
              //이 위젯의 디자인적인 부분 설정.
              decoration: BoxDecoration(//위젯을 박스(사각형)으로 생각해 디자인 부분 설정.
                color: Colors.red[200],
                //위젯의 가장자리 부분 디자인.
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),//BorderRadius에서 수치만큼 한 구역을 둥글게 만듦.
                  bottomRight: Radius.circular(40.0),
                )
              ),
            ),
            //ListView에서 사용할 각 Cell(Item)
            ListTile(
              //TextTile의 왼쪽 부분에 배치될 위젯.
              leading: Icon(Icons.home),
              //ListTile의 제목.
              title: Text('Home'),
              //ListTile을 클릭시 이벤트 처리 기능 구현.
              onTap: () {
                print('Home is clicked');
              },
              //TextTile의 오른쪽 부분에 배치될 위젯.
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

