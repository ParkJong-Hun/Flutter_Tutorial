import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(//RaisedButton의 후기 버전. 강조된 버튼이라는 의미.
              //버튼을 클릭했을 때 일어나는 기능 구현.
                onPressed: (){
                  //route(name)으로 push
                  Navigator.pushNamed(context, '/b');
                },
                //버튼 내에 들어갈 위젯들.
                child: Text('Go to ScreenB')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/c');
                },
                child: Text('Go to ScreenC')
            ),
          ],
        ),
      ),
    );
  }
}
