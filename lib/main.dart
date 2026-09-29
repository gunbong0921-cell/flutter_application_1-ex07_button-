import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(
              // 버튼에 표시할 텍스트를 위젯을 통해 설정
              child: const Text('Button #1', style: TextStyle(fontSize: 24)),
              // 터치했을때의 기능 구현. 익명함수를 통해 직접 구현
              onPressed: () {
                // 직접 구현
                print('첫 번째 버튼이 클릭됨');
              },
            ),
            ElevatedButton(
              child: const Text('Button #2', style: TextStyle(fontSize: 24)),
              // 익명함수내에서 별도의 함수를 호출할 수 있음
              onPressed: () {
                //함수 호출
                _onClick();
              },
            ),
            ElevatedButton(
              child: const Text('Button #3', style: TextStyle(fontSize: 24)),
              // 람다 형식으로 외부함수를 호출한다.
              onPressed: () => _onClick(), //람다 형태로 함수 호출
            ),
            ElevatedButton(
              child: const Text('Button #4', style: TextStyle(fontSize: 24)),
              // 함수이름을 직접 대입해서 호출한다.
              onPressed: _onClick, // 함수 이름 대입
            ),
          ],
        ),
      ),
    );
  }

  // 버튼 클릭시 호출할 메서드 정의
  void _onClick() {
    print('버튼이 클릭됨');
  }
}
