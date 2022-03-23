import 'package:first_app/models/product.dart';
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
    List<Product> products = <Product>[];

    Product product1 =
        Product('T-shirt', 'The best t-shirt in welcome center', 12.44);

    Product product2 = Product('Cup', 'The best cup in welcome center', 9.98);

    products.add(product1);
    products.add(product2);

    List<Text> texts = <Text>[];
    for (int i = 0; i < products.length; i += 1) {
      if (products[i].name.toLowerCase().contains(searchText.toLowerCase())) {
        texts.add(Text(products[i].name));
      }
    }

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
                Expanded(
                  child: ListView(
                    children: texts,
                  ),
                ),
              ],
            )));
  }
}
