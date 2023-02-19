import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/screens/guests/home_page.dart';

class ListeScreen extends StatefulWidget {
  const ListeScreen({super.key});

  @override
  State<ListeScreen> createState() => _ListeScreenState();
}

class _ListeScreenState extends State<ListeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('retour'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return home_page();
                  },
                ),
              );
            },
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 5.0,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '(REFERENCE)'.toUpperCase(),
                        style: TextStyle(
                          color: Color.fromARGB(255, 67, 54, 244),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: 'AIR JORDAN',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 111, 54, 244)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 57, 54, 244)),
                            ))),
                    RichText(
                      text: TextSpan(
                        text: 'LIBELLE)'.toUpperCase(),
                        style: TextStyle(
                          color: Color.fromARGB(255, 54, 82, 244),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: 'CHAUSSURE',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 54, 73, 244)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 54, 73, 244)),
                            ))),
                    RichText(
                      text: TextSpan(
                        text: 'ETAT VENTE'.toUpperCase(),
                        style: TextStyle(
                          color: Color.fromARGB(255, 67, 54, 244),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Ex: HORS VENTE OU EN VENTE',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 73, 54, 244)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 67, 54, 244)),
                            ))),
                    RichText(
                      text: TextSpan(
                        text: 'ETAT ACHAT'.toUpperCase(),
                        style: TextStyle(
                          color: Color.fromARGB(255, 67, 54, 244),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: 'EX:HORS ACHAT OU ETAT ACHAT',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 67, 54, 244)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 82, 54, 244)),
                            ))),
                    SizedBox(
                      height: 5.0,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'STOCK DESIRE'.toUpperCase(),
                        style: TextStyle(
                          color: Color.fromARGB(255, 54, 57, 244),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: 'EX:STOCK PHYSIQUE OU STOCK EN LIGNE',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 67, 54, 244)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 82, 54, 244)),
                            ))),
                    TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 54, 114, 244)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 73, 54, 244)),
                            ))),
                    RichText(
                      text: TextSpan(
                        text: 'PRIX DE VENTE'.toUpperCase(),
                        style: TextStyle(
                          color: Color.fromARGB(255, 73, 54, 244),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: ' EX: 12000FCFA  ',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 54, 57, 244)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 54, 82, 244)),
                            ))),
                    SizedBox(
                      height: 0.0,
                    ),
                    ElevatedButton(
                      onPressed: () => print("click button"),
                      child: Text("SAISIR FORMULAIRE"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
