// ignore_for_file: prefer_const_constructors
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'package:projet_dolibar/pages/stock.dart';
import 'inventaire.dart';
import 'produit.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({super.key});

  @override
  State<Acceuil> createState() => _AcceuilState();
}

 

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Page d'accueil",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 58, 59, 60),
           centerTitle: true,
          title: Text('Modules'),
      ),
        body: SingleChildScrollView(
          child: Column(children: [
         SizedBox(height: 40),
          moduleProduit(context) ,
          moduleInventaire(context),
          moduleStock(context) ,
        ],
        ),
        ),
      ),
    );
  }

Widget moduleProduit(BuildContext context) => Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: Color.fromARGB(255, 58, 59, 60),
  ),
  padding: EdgeInsets.all(20),
  margin: EdgeInsets.all(10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            'https://cdn-icons-png.flaticon.com/512/1170/1170679.png',
          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Produits",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 125, 125),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Gestions des produits",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: ( BuildContext context) => Produits()),
            );
        },
        child: Text(
          'Details',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 125, 125),
          ),
        ),
      ),
    ],
  ),
);

  Widget moduleInventaire(BuildContext context) => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Color.fromARGB(255, 58, 59, 60),
    ),
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.all(10),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            'https://image.shutterstock.com/image-vector/user-icon-trendy-flat-style-260nw-418179865.jpg',
          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Inventaires",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 125, 125),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Gestions des inventaires",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: ( BuildContext context) => Inventaire()),
            );
        },
        child: Text(
          'Details',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 125, 125),
          ),
        ),
      ),
    ],
  ),
);
}


Widget moduleStock(BuildContext context) => Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: Color.fromARGB(255, 58, 59, 60),
  ),
  padding: EdgeInsets.all(20),
  margin: EdgeInsets.all(10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAe1BMVEX///8AAADR0dGZmZmfn58VFRV0dHQzMzPf39+GhobW1tYaGhoiIiL8/PyPj4/29vbs7OwcHBwmJiYPDw8SEhLn5+dXV1cICAjy8vJQUFA9PT0rKytpaWlcXFzj4+OmpqbBwcG1tbV8fHwwMDBISEhAQECzs7NSUlKLi4umF06OAAAG00lEQVR4nO2di3qjKhCANY1NGqGKmmrvadPd0/d/wjMYq+CFkCwI9pt/t3uJQvwzwCBqGwQIgiAIgiAIgiAIgiAIgiAIgiAIgiAIgiAIgiAIcj3U3Vvv1jPw4c4vuAlnYZO4EkznEQzDtSvD1VyGt2iIhmiIhmiIhmiIhmiIhmiIhmiIhmj4iw1psH+3vAznOoYps72C49gQBG0vUrk1rAUtKzo1bATtKrozpEEat1vX9oYbhzGsmLDZXhSHhpER8jOGEMFI2m4tij3D/EDNvBHdvqpjWMXydmtRlA3z1GDVt9OGUh+0HEXZ8N1k1ZVU9Yu8jYVD7ERRNtwbrftRrHorbknHBC0p2jR8uFDQjqJsaPRSLZUEhT42KWhFUTbMjF2pBaG70QiODjIdJoe6E71ssdmZqjiRBIUIjg4yPxh7+45Bxi83RsiEKuUIRv13tCs4x6xNGmQGiV4WNDTfmNdQvw/aiOAMhpf0wRnmNDYEBRRpoo7gEg0vEZzn3MK4oF6itxdBy4auBxnrhhcNMktcxdBP9Nvp4/PZUI7g7InevqEXfdCmoTxVc5Im7Bq6T/SWDT1I9NOGt3f/jg+JfsrQ9HVMt4NMjWz4aLx+Z4m+RTZcma3cwRn9ENkwNfyROkz0LbKh0emTB32QIxveG6yZuk4TDb2x9J86onjISULTozqCbgzDu9X2egTZJNgT9uw+gmbnNEIDAMGnZ0Km+uF8ETRqKIaQ7jdh+Bxl43vONcjoGpaDK9YTguJUbcOiZ0bIhOAsaULfMMtKLcEGCoefkmMe50cymu+tntFfZxhrBLGNIE2SoIrCaHM8Dm9X4MwbQT1Ddt7wFBceviRJvEj0uoYsI1EdQ0Jg1Cjhz6x5OavTOYFXGCm2dVQgfADdHyPogGUGnTCH/eAXYU0hMmea0DJkUclibkjCHJJbFhZFCQfO4jIqY1Zvj6CT7mhCO0GSxzCIRhHhBaKygK+o3jcsYE/PDEme5bwfloTB8RL4Kwuf+cukyLhqlhMWh2/crTGEQYbk8DmEBRgWMYlhl7jeFwrF8FHM7HfGMKoTGvTDPCa1LxcswyjmLxPonoSUIRz2yZAHMEgzCBwEuTZkOcSe8a+M2zax9suQ1IZlURtmcKQ8c0Sn//HGC//YQlyqH8M0zvMM+msmG0KBKC+cCJ5vpSVvYidDUmZRyXMjKchpiIUhZFunB5Djv2EUBf0CinWG8ekrLFe0AkNaVfNqnjEsSsaHlJNhmYUx4RMVeBk6F8vLON7WoauaQYZneNgpL6AItHBuWDQx5E2UN+akqubti2ezBeNpoTwlCRj8GYM+FUIGiHmDZbt6fAkEQZ4meOPl2aLgGQOK8n/vTju5NtSZnonwRE/rYRSS/f5njjaspawTfT0U8Ubt0DAMb1c7fYSbxHw5oz9reListHg2cWaq5onh99X1+BpBY2ttrpfuFfTWS6+qw5NlwwmMrHm7X7pXIBs+XHE0XizdK+iNpZ9XVOHD0r2Cfj7MP+/Pc1e15f3ug5yrVhPFxX+n1+h1uMbwSyjvcZpouMZQyCnaiZ4afZTjEq4wFI5VP4KPLyNvPguXG7ZXwi8ZZF6X9KRzd0JBp68t9dLE65Ke5f4ZR+Hwv5SCAvzhmcUYsp/A0N6zaX1BOYILMjy0Jd+Vgi30JLgYwz/t8PimFBTSYPOk5VIMu5OPJ5Vg0GuiyzF8aErRYK0SHEZwMYZt/1J8U1Apgt0jiMswfGiLTY+jvUTvoyGLp+h64fQwM0wTnhk+661jvOhEkIpPyfpiSCqt8529VgTlwcgTw796he7CceQz+sRHQ71nuWk4Tv+M/r+FGtLgMC647bdwHw31WmnvO16cOKb9HuxlK42q8yXGG+kLHYxRnz4ahmw1NZR2g+SgkZZj31Bj38sovhjWdwWNEXXrLN+DAP55E6s8MNLcI+Sn4RRdFx2cVQi9l07Oyf03bHto0ttwn4gdkE5Nd7w3fGpL7Pp+HTTYjt9RugTDbiH/o3vx629vXFKcNXpv2M3If34gxuNanh/QIFUtvnlv2DVGODUkrzeH4T0jigAuwFB45Gv7Njot2CkWbpZgqHyYBjpjpVo8XYThQV2Lxg+r8d1QdZMGVa0NL8ZwugL6rroAtRjDyWdL03u9T8h7w4lbNFaTK1KLMxy7RL2/mXiqaZGGh36x/fpM+luaoXRHH119by7U89+wTRbp4V41+VyuIXfbfdy/XtTzlmSYf+nlvOUamgAN0RAN0fAXG872c0hvXBmOrNFbwdx3KL6c1c0M9BdWfyG/3xBBEARBEARBEARBEARBEARBEARBEARBEARBEARR8D9Rh4KsJD5NKwAAAABJRU5ErkJggg==',
          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Stock",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 125, 125),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Gestions des stocks",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: ( BuildContext context) => Stock()),
            );
        },
        child: Text(
          'Details',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 125, 125),
          ),
        ),
      ),
    ],
  ),
);
