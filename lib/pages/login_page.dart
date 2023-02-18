// import 'dart:convert';

// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Login_page extends StatelessWidget {
//   final _formKey = GlobalKey<FormState>();

//   const Login_page({super.key});

//   @override
//   Widget build(BuildContext context) {

//     void _submit() {
//     // Valider les champs de formulaire
//     if (_formKey.currentState?.validate() ?? false) {
//       _formKey.currentState?.save();// sauvegarder les données
//       _login(_username, _password); // appeler la méthode pour se connecter
//     }
//   }

//   // Connecter l'utilisateur avec les informations d'identification

//   void _login(String username, String password) async {
//     // URL pour la requête API de connexion
//     var url = Uri.parse('http://Bouwouri/api/login');
// // Corps de la requête API avec les informations d'identification
//     var body = jsonEncode({
//       'login': username,
//       //'username': username,
//       'password': password,
//     });
//     // Effectuer la requête API pour se connecter
//     var response = await http.post(
//         url, headers: {'Content-Type': 'application/json'}, body: body);
// // Décoder la réponse de la requête API
//     var decoded = jsonDecode(response.body);
//     // Vérifier si la connexion a réussi
//     if (response.statusCode == 200) {
//       // Naviguer vers la page d'accueil si la connexion a réussi
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ,
//         ),
//       );
//     } else {
//       // Afficher une boîte de dialogue d'erreur si la connexion a échoué
//       showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text('Error'),
//               content: Text("Incorrect username or password"),
//               actions: <Widget>[
//                 ElevatedButton(
//                   child: Text('OK'),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 )
//               ],
//             );
//           });

//     }
//     //print(decoded); //Afficher les données décodées dans la console
//   }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login Screen'),
//       ),
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               padding: const EdgeInsets.fromLTRB(20, 20, 20, 70),
//               child: FlutterLogo(
//                 size: 40,
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(90.0),
//                   ),
//                   labelText: 'Login',
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
//               child: TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(90.0),
//                   ),
//                   labelText: 'Password',
//                 ),
//               ),
//             ),
//             Container(
//                 height: 80,
//                 padding: const EdgeInsets.all(20),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     minimumSize: const Size.fromHeight(50),
//                   ),
//                   child: const Text('Se connecter'),
//                   onPressed: () {},
//                 )),
//             TextButton(
//               onPressed: () {},
//               child: Text(
//                 'Forgot Password?',
//                 style: TextStyle(color: Colors.grey[600]),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
