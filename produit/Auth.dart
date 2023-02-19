import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/guests/home_page.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
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
              RichText(
                text: TextSpan(
                  text:
                      'BIENVENUE SUR LE MENU DOLIBARR_APP CHOISISSEZ VOS PRODUITS '
                          .toUpperCase(),
                  style: TextStyle(
                      color: Color.fromARGB(255, 76, 99, 175),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'NOUS SOMMES DISPONIBLES POUR TOUTS PRODUITS '
                      .toUpperCase(),
                  style: TextStyle(color: Colors.blue, fontSize: 25.0),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'NOM PRODUITS(REF)'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.blue,
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
                                  color: Color.fromARGB(255, 67, 54, 244)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 95, 54, 244)),
                            ))),
                    RichText(
                      text: TextSpan(
                        text: 'NATURE PRODUITS(LIBELLé)'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.blue,
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
                                  color: Color.fromARGB(255, 73, 54, 244)),
                            ))),
                    RichText(
                      text: TextSpan(
                        text: 'QUANTITEE PRODUITS'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.blue,
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
                            hintText: 'Ex: 10',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 82, 54, 244)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 54, 73, 244)),
                            ))),
                    RichText(
                      text: TextSpan(
                        text: 'POIDS PRODUITS'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.blue,
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
                            hintText: 'Ex:..KG',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 67, 54, 244)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 54, 57, 244)),
                            ))),
                    RichText(
                      text: TextSpan(
                        text: 'PAYS ORIGINE'.toUpperCase(),
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
                            hintText: 'Ex: USA',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 73, 54, 244)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 54, 73, 244)),
                            ))),
                    RichText(
                      text: TextSpan(
                        text: 'PRIX PRODUITS'.toUpperCase(),
                        style: TextStyle(
                          color: Color.fromARGB(255, 54, 67, 244),
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
                            hintText: 'Ex: FCFA',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 82, 54, 244)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 89, 54, 244)),
                            ))),
                    SizedBox(
                      height: 5.0,
                    ),
                    ElevatedButton(
                      onPressed: () => print("click button"),
                      child: Text("SAISIR\nFORMULAIRE"),
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
