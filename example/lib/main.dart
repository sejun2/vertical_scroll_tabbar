import 'package:flutter/material.dart';
import 'package:vertical_scroll_tabbar_icon/vertical_scroll_tabbar.dart';

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
            isScrollable: true,
            indicatorColor: Colors.red,
            isIcon: true,
            onTabChange: (index) {
              print(index);
            },
            tabs: [
              Tab(
                child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: const Text(
                      'REDS',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Tab(
                child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: const Text(
                      'BLUES',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Tab(
                child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: const Text(
                      'GREENS',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Tab(
                child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: const Text(
                      'BLUES',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Tab(
                child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: const Text(
                      'REDS',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ],
            children: [
              Column(
                key: GlobalKey(),
                children: [...reds],
              ),
              Column(key: GlobalKey(), children: [...greens]),
              Column(
                key: GlobalKey(),
                children: [...blues],
              ),
              Column(
                key: GlobalKey(),
                children: [...greens],
              ),
              Column(
                key: GlobalKey(),
                children: [...reds],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> reds = [
  Container(padding: const EdgeInsets.all(20), child: const Text("Reds title")),
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
  Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    color: Colors.red,
  ),
];

List<Widget> greens = [
  Container(padding: const EdgeInsets.all(20), child: const Text("Blues title")),
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

List<Widget> blues = [
  Container(padding: const EdgeInsets.all(20), child: const Text("Greens title")),
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
