import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;

class Stock extends StatelessWidget {
  const Stock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouvelle Page'),
      ),
      body: Center(
        child: Text(
          'Bonjour, vous êtes sur la nouvelle page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}