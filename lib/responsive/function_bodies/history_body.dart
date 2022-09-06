import 'package:flutter/material.dart';
import 'package:simple_calculator/responsive/dimensions.dart';

class HistoryBody extends StatefulWidget {
  const HistoryBody({Key? key}) : super(key: key);

  @override
  State<HistoryBody> createState() => _HistoryBodyState();
}

class _HistoryBodyState extends State<HistoryBody>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return SizedBox(
      width: historyBodyWidth,
      child: Column(
        children: [
          SizedBox(
            height: 60,
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                controller: tabController,
                tabs: const [
                  Tab(
                    text: 'History',
                  ),
                  Tab(
                    text: 'Memory',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 10.0, right: 8.0, bottom: 8.0),
              child: TabBarView(
                controller: tabController,
                children: [
                  historyBody(),
                  memoryBody(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget historyBody() {
    return const Text('There\'s no history yet');
  }

  Widget memoryBody() {
    return const Text('There\'s nothing saved in your memory');
  }
}
