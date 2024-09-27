import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/main_screen.dart';
import 'package:simple_beautiful_shopping_list/product_repository.dart';

void main() {
  ProductRepository productRepository = ProductRepository();

  runApp(MainApp(products: productRepository.getProducts()));
}

// Das hier ist eine Ausnahme. Die erste Klasse darf mit in der main.dart sein.
class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Beautiful Shopping App',
      debugShowCheckedModeBanner: false,
      home: MainScreen(products: products),
    );
  }
}
