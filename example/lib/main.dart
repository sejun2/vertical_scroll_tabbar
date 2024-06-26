import 'package:example/shoppling_item_list.dart';
import 'package:flutter/material.dart';
import 'package:vertical_scroll_tabbar/vertical_scroll_tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(shoppingItems);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        body: SafeArea(
          child: VerticalScrollTabbar(
            isScrollable: true,
            indicatorColor: Colors.red,
            onTabChange: (index) {
              debugPrint(index.toString());
            },
            tabs: [
              Tab(
                child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: const Text(
                      'men\'s clothing',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Tab(
                child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: const Text(
                      'jewelery',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Tab(
                child: Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: const Text(
                      'electronics',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Tab(
                child: Container(
                    alignment: Alignment.center,
                    width: 120,
                    child: const Text(
                      'women\'s clothing',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ],
            children: [
              Column(
                key: GlobalKey(),
                children: [
                  Text('Men\'s Clothing', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ...shoppingItems
                      .map((element) => element.category == 'men\'s clothing' ? ShoppingItemCard(item: element) :
                  const SizedBox()),
                      ]
              ),
              Column(key: GlobalKey(), children: [
                Text( 'Jewelery', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ...shoppingItems
                    .map((element) => element.category == 'jewelery' ? ShoppingItemCard(item: element) : const
                SizedBox())
              ]),
              Column(
                key: GlobalKey(),
                children: [
                  Text('Electronics', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ...shoppingItems.map(
                      (element) => element.category == 'electronics' ? ShoppingItemCard(item: element) : const
                      SizedBox())
                ],
              ),
              Column(
                key: GlobalKey(),
                children: [
                  Text('Women\'s Clothing', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ...shoppingItems.map((element) =>
                      element.category == 'women\'s clothing' ? ShoppingItemCard(item: element) : const SizedBox())
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShoppingItemCard extends StatelessWidget {
  const ShoppingItemCard({super.key, required this.item});

  final ShoppingItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // shopping item
          SizedBox(
            width: 170,
            height: 170,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.network(item.image, fit: BoxFit.cover,
                  frameBuilder: (BuildContext context, Widget child, int? frame, bool wasSynchronouslyLoaded) {
                return AnimatedOpacity(
                  opacity: frame == null ? 0 : 1,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeOut,
                  child: ClipRRect(borderRadius: BorderRadius.circular(20), child: child),
                );
              }),
            ),
          ),
          // shopping item details
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 10),
                Text(
                  item.description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 10),
                Text(
                  '\$${item.price}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
