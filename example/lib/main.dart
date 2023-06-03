import 'dart:async';

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
      theme: ThemeData(),
      home: Scaffold(
        body: SafeArea(
          child: VerticalScrollTabbar(
            title: 'Flutter Demo Home Page',
            tabs: const [
              Tab(
                text: 'A',
              ),
              Tab(
                text: 'B',
              ),
              Tab(
                text: 'C',
              ),
              Tab(
                text: 'D',
              ),
              Tab(
                text: 'E',
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

class VerticalScrollTabbar extends StatefulWidget {
  const VerticalScrollTabbar(
      {super.key,
        required this.title,
        required this.children,
        required this.tabs});

  final String title;
  final List<Widget> children;
  final List<Tab> tabs;

  @override
  State<VerticalScrollTabbar> createState() => _VerticalScrollTabbarState();
}

class _VerticalScrollTabbarState extends State<VerticalScrollTabbar>
    with SingleTickerProviderStateMixin {
  ScrollController scrollController = ScrollController();
  List indexList = [];
  TabController? tabController;
  bool mutex = false;
  Timer? timer;

  @override
  void initState() {
    tabController = TabController(
      length: widget.tabs.length,
      vsync: this,
    );
    tabController?.addListener(() {
      if (tabController?.animation?.isCompleted ?? true) {
        timer?.cancel();
        timer = Timer(const Duration(milliseconds: 500), () {
          mutex = false;
        });
      }
    });

    scrollController.addListener(() {
      if (mutex) return;

      for (var index = indexList.length - 1; index >= 0; index--) {
        if (scrollController.offset >= indexList[index]) {
          tabController?.animateTo(index);
          return;
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController?.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          tabs: [...widget.tabs],
          controller: tabController,
          onTap: (index) {
            mutex = true;
            scrollController.animateTo(indexList[index],
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn);
          },
        ),
        Expanded(
          child: ListWidget(
              scrollController: scrollController,
              onIndexInit: (indexList) {
                this.indexList.addAll(indexList);
              },
              children: [
                ...widget.children,
              ]),
        ),
      ],
    );
  }
}

class ListWidget extends StatefulWidget {
  const ListWidget({
    Key? key,
    required this.children,
    required this.scrollController,
    required this.onIndexInit,
  }) : super(key: key);

  final List<Widget> children;
  final ScrollController scrollController;
  final Function(List indexList) onIndexInit;

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  final List indexes = [];

  @override
  void initState() {
    WidgetsBinding.instance.endOfFrame.then((value) {
      final ancestor = context.findRenderObject();

      for (var element in widget.children) {
        assert(element.key != null && element.key is GlobalKey);

        final res = ((element.key as GlobalKey)
            .currentContext
            ?.findRenderObject() as RenderBox)
            .localToGlobal(Offset.zero, ancestor: ancestor);

        print(res.dy);

        indexes.add(res.dy);
      }

      widget.onIndexInit(indexes);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            controller: widget.scrollController,
            child: Column(children: [
              ...widget.children,
            ]),
          ),
        ),
      ],
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
