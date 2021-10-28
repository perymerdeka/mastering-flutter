import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/models/product.dart';
import 'package:providers/providers/products.dart';
import 'package:providers/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Provider
    final ProductProvider productData = Provider.of<ProductProvider>(context);

    // getting product of product data
    final List<Product> allProduct = productData.products;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allProduct.length,
      itemBuilder: (ctx, i) => ProductItem(
        allProduct[i].id,
        allProduct[i].title,
        allProduct[i].imageUrl,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
