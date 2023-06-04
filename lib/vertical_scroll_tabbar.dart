library vertical_scroll_tabbar;

import 'dart:async';
import 'package:flutter/material.dart';

/// A vertical scroll tabbar, which provides automated tabbar index changing when content is scrolled.
/// Children's length must equal tabs 's length.
class VerticalScrollTabbar extends StatefulWidget {
  const VerticalScrollTabbar(
      {super.key,
      required this.children,
      required this.tabs});

  /// Widgets to display in the tab bar's content section.
  final List<Widget> children;
  /// Tabs that will be displayed in the tab bar.
  final List<Tab> tabs;

  @override
  State<VerticalScrollTabbar> createState() => _VerticalScrollTabbarState();
}

class _VerticalScrollTabbarState extends State<VerticalScrollTabbar>
    with SingleTickerProviderStateMixin {
  //TODO("Satoshi"): Set options for tabbar

  /// Scroll controller for the tab bar's content section.
  ScrollController scrollController = ScrollController();
  /// List of indexes for the tab bar's content section.
  /// This is used to determine which tab to select when the user scrolls.
  List indexList = [];
  /// Tab controller for the tab bar.
  TabController? tabController;
  /// Mutex to prevent unexpected tab changes when tap the tab bar items.
  bool mutex = false;
  /// Timer for debounce
  Timer? timer;

  @override
  void initState() {
    assert(widget.children.length == widget.tabs.length,
        'children.length must equal tabs.length');

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
          child: _ListWidget(
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

/// A widget that contains a list of widgets, which is content section
class _ListWidget extends StatefulWidget {
  const _ListWidget({
    Key? key,
    required this.children,
    required this.scrollController,
    required this.onIndexInit,
  }) : super(key: key);

  /// Widgets to display in the tab bar's content section.
  final List<Widget> children;
  /// Scroll controller for the tab bar's content section.
  final ScrollController scrollController;
  /// Callback function that is called when the list of indexes is initialized.
  final Function(List indexList) onIndexInit;

  @override
  State<_ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<_ListWidget> {
  /// List of indexes for the tab bar's content section.
  /// This is used to determine which tab to select when the user scrolls.
  /// OnIndexInit function's parameter.
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
