import 'package:first_app/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: NetworkImage(product.imageUrl)),
        Text(product.name),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(product.price.toString()),
            CupertinoButton(
              child: const Text('Buy'),
              onPressed: () {},
            )
          ],
        )
      ],
    );
  }
}
