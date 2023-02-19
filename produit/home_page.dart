import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/guests/Auth.dart';
import 'package:flutter_application_1/screens/guests/Liste.dart';
import 'package:flutter_application_1/screens/guests/description_page.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 6, 67, 117)),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 6, 67, 117)),
                child: ListTile(
                  title: Text(
                    "PRODUITS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) {
                      return const AuthScreen();
                    }),
                  );
                },
                leading: const Icon(Icons.settings),
                title: const Text(
                  "NOUVEAU PRODUIT",
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) {
                      return const ListeScreen();
                    }),
                  );
                },
                leading: const Icon(Icons.logout),
                title: const Text(
                  "LISTE PRODUITS",
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.all(5),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 6, 13, 117),
                      foregroundColor: Colors.blue,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text(''),
                  ),
                  const SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) {
                          return const ListeScreen();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 6, 67, 117),
                      foregroundColor: Color.fromARGB(255, 255, 255, 255),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('LISTE PRODUITS'),
                  ),
                  const SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) {
                          return const AuthScreen();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 6, 67, 117),
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('NOUVEAU PRODUIT'),
                  ),
                  const SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) {
                          return const AuthScreen();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 6, 67, 117),
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text(''),
                  ),
                  const SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 6, 67, 117),
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text(''),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: "How To get rich",
                        image: "images/wealth.png",
                      );
                    },
                  ),
                );
              }),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(),
              ),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: "Saving money ways",
                        image: "images/urban-saving-money.png",
                      );
                    },
                  ),
                );
              }),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(),
              ),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: "sending global messages",
                        image:
                            "images/martina-guy-sends-a-message-from-phone.png",
                      );
                    },
                  ),
                );
              }),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(),
              ),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: "opening a new shop",
                        image: "images/login.png",
                      );
                    },
                  ),
                );
              }),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
