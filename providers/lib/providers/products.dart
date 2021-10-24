import 'dart:math';

import 'package:flutter/material.dart';
import 'package:providers/models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = List.generate(
    25,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Product ${index + 1}",
        description: 'Ini adalah deskripsi produk ${index + 1}',
        price: 10 + Random().nextInt(100).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300',
      );
    },
  );

  // getter
  List<Product> get products {
    return [..._products];
  }

  Product findById(productId) {
    return _products.firstWhere((prod) => prod.id == productId);
  }
}
