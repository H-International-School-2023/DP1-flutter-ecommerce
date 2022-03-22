import 'package:first_app/tabs/home_tab.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: 'Profile')
        ]),
        tabBuilder: (context, index) {
          if (index == 0) {
            return const HomeTab();
          }
          if (index == 1) {
            return const Text('Second tab');
          }

          return const Text('!!!Unknown tab!!!!!');
        });
  }
}
