
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//import 'package:projet_dolibar/pages/authentification.dart';
import 'package:projet_dolibar/pages/acceuil.dart';
import 'package:projet_dolibar/pages/authentification.dart';

void main() {
  runApp(MyApp());
}

//Classe qui définit l'application Flutter

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authentification(), //Page de connexion est définie comme page d'accueil
    );
  }
}




