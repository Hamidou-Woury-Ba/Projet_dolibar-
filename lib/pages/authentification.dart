import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'acceuil.dart';


class Authentification extends StatefulWidget {
  @override
  _AuthentificationState createState() => _AuthentificationState();
}




class _AuthentificationState extends State<Authentification> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  void _login(String username, String password) async {
    
    var url = Uri.parse('http://localhost/dolibarr/api/index.php/login');

    var body = jsonEncode({
      'login': username,
      'password': password,
    });
   
    var response = await http.post(
        url, headers: {'Content-Type': 'application/json'}, body: body);

    var decoded = jsonDecode(response.body);
    
    if (response.statusCode == 200) {
     
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Acceuil(),
        ),
      );
    } else {
      
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Erreur'),
              content: Text("Le login ou mot de passe saisit est incorect"),
              actions: <Widget>[
                ElevatedButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });

    }
  }


    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 29, 30, 30),
        title: Text('Connexion'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Image.network(
                'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAK4AAACDCAMAAAAj4NA0AAAAmVBMVEX///8AbdkAatgAX9bc3Nz8/PwAZtgtd9v2+f0AZNfW5Pfk7/sAYtdSUlK8z/GXl5fr6+tLS0v29vY3NzdcXFzPz8+goKBAQEDJycm8vLwAAACsrKwOdNvK2/RFRUUwMDBsbGyPj48zft13oeWrveyGqefG1fOFhYV3d3cAUNOXtepXjeAAWdVJg95wmuOjwO2vyO8PDw8jIyPRpoBhAAADbElEQVR4nO2Yi3KiMBSGw1UU0ADhkqJcaq2sWu32/R9uQ0CJVu3szGqyM+cbp8SgM5+nfw4BhAAAAAAAAAAAAAAAAAAAeBTOREC2zM+4v4wTmiPb5kdcQzuij0D3HwO6jwR0HwnoPpL/RNdyOiae+rrudLPcvnboqutOliN9bNt6h6a27mS5s7WrqKg71W7IKqm7Mm7Jqqi78m7bavaHYrqbe7bjrSvb75zF/doqZuuM9Nu23l6xJKC3mz1BRVtHuyiucJkwVrLtvjHdnS2snTHn6Graoq14vZ1v+lmHNWLvIFXsKuJC0+1TF2AbSG9z73uSWIjJHZ7XuDt7KtHqJp9DX7CXw7S7+5TndIe34Roh1tNdyFO6h6A7Fp7dOe/TI58qPdITdYWKLnb2kd2bPLtvHMZDGIRWsBkiPVYpxe9CHxt2M+6HMK1Si5iIO4RTa1gONdfmKmUXCXXUxkteX1e01T9kG55xtjcf66vDYaWJU55aGwf3/Dat7QVnWzRDse35/s5+l+nvZftdMLlnq+nKXd42d+7aFdzyOh8342C/qnbzw3Bfb/jaI8XWWYc7v+pra0raMt/9lfwaqj0QGXA2F+1Wt8crBXN7wl3OjVMkbGO+VLa0Pe5h6xkew/C2B9VlO9zF+/vi/1AFAOBRYCy+M0NkWu1fVZnNxHeRaaUmCmJZNj9yqYvWGBVq6obhFV1GqxsqFggrSYMizVpdi/pFSjLEw0BYGLI6CoqAth+Lq7TwaUyssMF54aN1FpPuRz2Xxo9DnKVRgtC6yEyTljOu65vITyt2jpbMN/6ds1MBqSyc+iQzESElZavx2dCC/7fxS4JowLsDjuJeNyj4R8wI45LH2EqZbknab5AvCaVlFU26YzNDJO+G9brXjWg3EWRx0I1ywnT5LFk/27TFqrJuwLJ77Fu06XWPnaGheS/HsotTXtbjb3suVtVXsL6im/YTFaWCbhcZQp+typk1/BAWszYPHHbsdetuoozNqFtVa9m6+IunoWZLzeyG9Asfl9oLL29dWRbhEc9eKsm6KCubPPHJmpWWRk2eV20EStMKmG5SVuxcwfxwSpK8iRJW3YLr+pJ0EU7qGUVx3A3rvG1TOUa0fYV5XVOeA4uNchxSFOb8PZXSxwAAAAAAAAAAAAAAAAAAAAAAAP6ePyh4Obm20yVaAAAAAElFTkSuQmCC'
              ),
            ),
            Container(
              child: Form(
                key: _formKey,
                child: Column(children: [
                   Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: TextFormField(
                
                    controller: loginController,
                    validator: (value){
                    if (value!.isEmpty){
                      return 'Vueilles saisir  un login valide';
                      }
                   },
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90.0),
                  ),
                  labelText: 'Login',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextFormField(
                validator: (value){
                  if (value!.isEmpty){
                    return 'Vueillez saisir un mot de passe valide';

                  }

                },
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90.0),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
                ]),
              ),
            ),
            Container(
                height: 80,
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text('Se connecter'),
                  onPressed: () {

                    if (_formKey.currentState!.validate()){
                    print(loginController.text);

                      _login(loginController.text, passwordController.text);
                      
                    }
                    

                  },
                )),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }