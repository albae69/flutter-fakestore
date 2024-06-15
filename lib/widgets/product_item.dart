import 'package:fakestore/models/product.dart';
import 'package:fakestore/utils/formatStr.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.white,
      child: Column(
        children: [
          Image.network(
            product.image,
            height: 150,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 8),
          Text(product.title.ellipsText(20)),
          Text(product.description.ellipsText(50)),
        ],
      ),
    );
  }
}
