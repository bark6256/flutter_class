import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row, Column, Expanded Example"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        child: Text("1"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Center(
                        child: Text("2"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      child: Center(
                        child: Text("3"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      child: Center(
                        child: Text("4"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                      child: Center(
                        child: Text("5"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                      child: Center(
                        child: Text("6"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.pink,
                        child: Center(
                          child: Text("7"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.brown,
                        child: Center(
                          child: Text("8"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        child: Center(
                          child: Text("9"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
