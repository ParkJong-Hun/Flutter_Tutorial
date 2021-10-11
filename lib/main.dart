import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PJH Profile',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('PJH',
          style: TextStyle(
            color: Colors.yellow
          ),
        ),
        backgroundColor: Colors.black54,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(//동그란 형태의 이미지를 화면에 보임.
                backgroundImage: AssetImage('assets/logo.png'),//pubspec.yaml에 리스트를 추가한 파일(이미지)를 가져와 화면에 보임.
                radius: 70.0,//이미지의 반 지름.
                backgroundColor: Colors.white12,
              ),
            ),
            //SizedBox와 비슷하지만, 중간에 선을 그음.
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,//선의 굵기.
              endIndent: 30.0,//끝에서 어느정도 떨어져 있을지 설정.
            ),
            Text("Name",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Park JongHun",
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text("Job",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Mobile developer",
              style: TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            //1개 이상의 자식 위젯을 가로로 배치.
            Row(
              children: [
                //Flutter에서 지원하는 Icons(작은 일러스트 이미지 집합) 속성을 이용해 화면에 보임.
                Icon(Icons.check_circle_outline,
                  color: Colors.green,
                ),
                Text("Native Android",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    letterSpacing: 1.0
                  )
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline,
                  color: Colors.green,
                ),
                Text("Native iOS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    )
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.warning_outlined,
                  color: Colors.amber,
                ),
                Text("Flutter",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    )
                )
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/zeng.jpg"),
                radius: 40.0,
                backgroundColor: Colors.white12,
              ),
            )
          ],
        ),
      )
    );
  }
}
