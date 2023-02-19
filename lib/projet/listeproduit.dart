import 'package:flutter/material.dart';

class StockItem {
  final String name;
  final int quantity;

  StockItem(this.name, this.quantity);
}

class StockPage extends StatefulWidget {
  @override
  _StockPageState createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  List<StockItem> _items = [
    StockItem('Item 1', 10),
    StockItem('Item 2', 5),
    StockItem('Item 3', 15),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestion de stock'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text('Quantité : ${item.quantity}'),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  _items[index].quantity;
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              final nameController = TextEditingController();
              final quantityController = TextEditingController();

              return AlertDialog(
                title: Text('Nouvel article'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Nom de l\'article',
                      ),
                    ),
                    TextField(
                      controller: quantityController,
                      decoration: InputDecoration(
                        labelText: 'Quantité',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    child: Text('Annuler'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ElevatedButton(
                    child: Text('Ajouter'),
                    onPressed: () {
                      final name = nameController.text;
                      final quantity =
                          int.tryParse(quantityController.text) ?? 0;

                      if (name.isNotEmpty && quantity > 0) {
                        setState(() {
                          _items.add(StockItem(name, quantity));
                        });

                        Navigator.of(context).pop();
                      }
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
