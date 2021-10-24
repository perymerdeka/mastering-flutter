import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)!.settings.arguments as String; // is the id!

    // Provider
    final product = Provider.of<ProductProvider>(context).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(product.imageUrl), fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }
}
