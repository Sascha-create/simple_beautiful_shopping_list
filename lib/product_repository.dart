import 'package:simple_beautiful_shopping_list/models/product.dart';

class ProductRepository {
  final List<Product> _products = [
    Product("Tomate", 19.99),
    Product("Apfel", 7.99),
    Product("Wassermelone", 34.99),
    Product("Tee", 12.99),
    Product("Lego", 649.99),
    Product("Wurst", 49.99),
  ];

  getProducts() => _products;
}
