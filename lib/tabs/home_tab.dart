import 'package:flutter/cupertino.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeTabState();
  }
}

class _HomeTabState extends State<HomeTab> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(middle: Text('Shop')),
        child: SafeArea(
            top: true,
            child: Column(
              children: [
                CupertinoSearchTextField(
                  onChanged: (value) => setState(() {
                    searchText = value;
                  }),
                ),
                Center(
                  child: Text(searchText),
                )
              ],
            )));
  }
}
