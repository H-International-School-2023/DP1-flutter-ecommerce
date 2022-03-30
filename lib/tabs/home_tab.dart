import 'package:first_app/components/product_item.dart';
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

    Product product1 = Product(
        'T-shirt',
        'The best t-shirt in welcome center',
        'https://cdn.shopify.com/s/files/1/0451/5135/5046/products/HFR_2022_Merch_Felpa_47_social_1024x1024@2x.jpg?v=1643038874',
        12.44);

    Product product2 = Product(
        'Cup',
        'The best cup in welcome center',
        'https://cdn.shopify.com/s/files/1/0451/5135/5046/products/HFR_2021_07_26_Merchandising_LineaSportiva_37_social_5fbc3f90-9067-46a7-bbf3-5643cece8807_1024x1024@2x.jpg?v=1642155928',
        9.98);

    products.add(product1);
    products.add(product2);

    List<ProductItem> productItems = <ProductItem>[];
    for (int i = 0; i < products.length; i += 1) {
      String lowerCaseProductName = products[i].name.toLowerCase();
      String lowerCaseSearchText = searchText.toLowerCase();
      bool isContained = lowerCaseProductName.contains(lowerCaseSearchText);
      if (isContained) {
        productItems.add(ProductItem(products[i]));
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
                    children: productItems,
                  ),
                ),
              ],
            )));
  }
}
