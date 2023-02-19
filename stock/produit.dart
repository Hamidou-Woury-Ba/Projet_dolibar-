import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;

  Product(this.name, this.description, this.price);
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestion de Stock',
      home: ProductList(),
    );
  }
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<Product> _products = [
    Product('CHAUSURE', 'Description du produit 1', 10.0),
    Product('VETEMENT', 'Description du produit 2', 15.0),
    Product('MONTRE', 'Description du produit 3', 20.0),
  ];

  void _removeProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des produits'),
      ),
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_products[index].name),
            subtitle: Text(_products[index].description),
            trailing: Text('\$${_products[index].price.toStringAsFixed(2)}'),
            onTap: () {
// Ajoutez ici la logique pour afficher les détails du produit
            },
            onLongPress: () {
              _removeProduct(index);
            },
          );
        },
      ),
    );
  }
}
