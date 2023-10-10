import 'package:flutter/material.dart';

/*
* HomePage(Header, Bottom)
*
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 상태
  int num = 1;

  // 행위
  void add() {
    setState(() {
      num = num + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(child: HeaderPage(num)),
            Expanded(
                child: BottomPage(
                    add)), // 함수를 전달할때는 add만 넣지 add()를 넣게 되면 함수를 실행시켜버리니 조심!
          ],
        ),
      ),
    );
  }
}

class HeaderPage extends StatelessWidget {
  final num;
  HeaderPage(this.num);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Align(
        child: Text(
          "$num",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 100,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}

class BottomPage extends StatelessWidget {
  final add;
  BottomPage(this.add);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Align(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          onPressed: () {
            print("버튼 클릭됨");
            add();
          },
          child: Text(
            "증가",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 100,
            ),
          ),
        ),
      ),
    );
  }
}
