import 'package:flutter/material.dart';
import 'package:vertical_scroll_tabbar/vertical_scroll_tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        body: SafeArea(
          child: VerticalScrollTabbar(
            indicatorColor: Colors.red,
            onTabChange: (index) {
              print(index);
            },
            tabs: const [
              Tab(
                child: Text('A', style: TextStyle(color: Colors.black),),
              ),
              Tab(
                child: Text('B', style: TextStyle(color: Colors.black),),
              ),
              Tab(
                child: Text('C', style: TextStyle(color: Colors.black),),
              ),
              Tab(
                child: Text('D', style: TextStyle(color: Colors.black),),
              ),
              Tab(
                child: Text('E', style: TextStyle(color: Colors.black),),
              ),
            ],
            children: [
              Column(
                key: GlobalKey(),
                children: [...a],
              ),
              Column(key: GlobalKey(), children: [...b]),
              Column(
                key: GlobalKey(),
                children: [...c],
              ),
              Column(
                key: GlobalKey(),
                children: [...b],
              ),
              Column(
                key: GlobalKey(),
                children: [...a],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


List<Widget> a = [
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
];

List<Widget> b = [
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.blue,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.blue,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.blue,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.blue,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.blue,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.blue,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.blue,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.blue,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.blue,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.blue,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.blue,
  ),
];

List<Widget> c = [
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.green,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.green,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.green,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.green,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.green,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.green,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.green,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.green,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.green,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.green,
  ),
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.green,
  ),
];
