import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('calc')),
        body: Column(
          children: [
            // 1번째 줄
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerRight,
                width: double.infinity,
                child: Text(
                  '0',
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                      color: Colors.cyanAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        '2',
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                      color: Colors.cyanAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                      color: Colors.cyanAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'CA',
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        '4',
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                      color: Colors.cyanAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        '5',
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                      color: Colors.cyanAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        '6',
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                      color: Colors.cyanAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                      color: Colors.amberAccent,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        '7',
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                      color: Colors.cyanAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        '8',
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                      color: Colors.cyanAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        '9',
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                      color: Colors.cyanAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                      color: Colors.cyanAccent,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
