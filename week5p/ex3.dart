import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Products')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Image.asset('assets/dart.png', height: 100),
                      SizedBox(height: 8),
                      Text(
                        'Dart',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('A programming language.'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum Product {
  dart('Dart', 'A programming language.', 'assets/dart.png'),
  flutter('Flutter', 'A UI toolkit.', 'assets/flutter.png'),
  firebase('Firebase', 'A backend service.', 'assets/firebase.png');

  const Product(this.name, this.description, this.imagePath);
  final String name;
  final String description;
  final String imagePath;
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(product.imagePath, height: 100),
            SizedBox(height: 8),
            Text(
              product.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}
