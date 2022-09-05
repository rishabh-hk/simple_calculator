import 'package:flutter/material.dart';

class HistoryBody extends StatefulWidget {
  const HistoryBody({Key? key}) : super(key: key);

  @override
  State<HistoryBody> createState() => _HistoryBodyState();
}

class _HistoryBodyState extends State<HistoryBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'History',
                ),
                Tab(
                  text: 'Memory',
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 10.0, right: 8.0, bottom: 8.0),
            child: TabBarView(
              children: [
                historyBody(),
                memoryBody(),
              ],
            ),
          ),
        ),
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
