import 'package:flutter/material.dart';
import '/inventaire/home_page.dart';
import 'dart:convert';
import '/inventaire/inventory_page.dart';

class AddProductPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _formKey = GlobalKey<FormState>();
  final _refController = TextEditingController();
  final _libelleController = TextEditingController();
  final _entrepotController = TextEditingController();
  final _produitController = TextEditingController();

  var http;

  get headers => null;

  void _addProduct() async {
    final response = await http.post(
      Uri.parse(
          'http://localhost/dolibarr/api/index.php/explorer?DOLAPIKEY=3gai2G6Amdio7AS5WD2GoeA387H0rBnY'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'label': _refController.text,
        'libelle': _libelleController.text,
        'entrepot': _entrepotController.text,
        'produit': _produitController.text,
      }),
    );

    if (response.statusCode == 200) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter un produit'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _refController,
                decoration: InputDecoration(
                  labelText: 'Ref',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer la référence du produit';
                  }

                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _libelleController,
                decoration: InputDecoration(
                  labelText: 'Libellé',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer un libellé';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _entrepotController,
                decoration: InputDecoration(
                  labelText: 'Entrepôt',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer un entrepôt';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _produitController,
                decoration: InputDecoration(
                  labelText: 'Produit',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer un produit spécifique';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _addProduct();
                  }
                },
                child: Text('Ajouter le produit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
