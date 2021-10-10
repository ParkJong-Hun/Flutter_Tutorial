//flutter/material.dart : 앱을 구현하기 위해 꼭 가져와야하는 라이브러리.
import 'package:flutter/material.dart';

//main : 앱에서 가장 먼저 실행되는 함수.
//=> : 식이 하나만 포함된 함수를 약식으로 사용하는 것.
//runApp : Flutter의 최상위 함수. 위젯을 argument로 갖음. Widget을 매개로 앱을 실행 함.
//MyApp : CustomWidget. runApp에서 실행되는 구현할 최상위 위젯.
//함수는 보통 소문자로 시작, 클래스는 보통 대문자로 시작하는 것이 약속.
void main() => runApp(MyApp());

//Flutter에서 stl을 입력하면 StatelessWidget을 상속받는 클래스의 틀이 자동으로 생성됨.
//build라는 Widget을 override함. build는 BuildContext를 갖고 있으며, Container를 반환함.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//최상위 위젯의 직계 자식으로 위치하는 위젯으로 최상위 위젯을 제외한 모든 위젯을 자식으로 포함함.
      title: "First app",//앱의 제목을 설정.
      theme: ThemeData(//앱의 기본 테마를 설정.
        //앱에서 사용할 대표 색상.
        primarySwatch: Colors.blue
      ),
      //앱의 홈(가장 처음 실행되는 곳)의 경로 설정.
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(//비계(건물의 철근) 같은 역할을 하는 위젯. 빈 도화지 같은 개념(iOS의 View, Android의 Layout과 비슷하다.)
      appBar: AppBar(//앱의 상단 부분(Toolbar, Title 같은 느낌)
        title: Text("First app"),
      ),
      //Scaffold의 가장 중요한 부분. appbar를 제외한 대부분의 공간으로,내용을 담는 부분.
      body: Center(//자식 위젯을 body의 중앙으로 정렬.
        // 정렬 받을 위젯.
      child: Column(//1개 이상의 자식 위젯을 세로로 배치.
          children: [//배치 될 위젯(들).
            Text('Hello'),//문자를 화면에 출력하기 위한 위젯.
            Text('World!')
          ],
        ),
      ),
    );
  }
}
