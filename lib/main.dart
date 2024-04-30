// import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

// final Uri _url = Uri.parse('https://github.com/Kareem-Zaid');

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Don't const MaterialApp itself; instead const children separately, each as required
      debugShowCheckedModeBanner: false,
      title: 'Bio',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          // SafeArea keeps stuff inside away from danger area above
          // child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/pw/AP1GczPJAfqVWbLo97a_aJRl5Yrwuziz05qzpqnOcdMWzJQPAYsSvhhoowrkf77R9zLg2FahiYeEVBLQPKP_quDOmCWxZZNJlH3oo83FLMUvi82oFXum0T5y-TcFlIOqH4X8X7OkMOgNdUQAWtLMLYmjFxEUCQ=w580-h773-s-no-gm'),
              ),
              const Text(
                'كريم زيْد\nKareem Zaid',
                // softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 38,
                    color: Color.fromARGB(255, 252, 252, 252),
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                    fontFamily: 'Cairo'),
              ),
              Text(
                'مهندس كهرباء / مبرمج\nElectrical Engineer / Software Developer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade200,
                  // Do not const "Text" widget here, as this color property can't be accessed on the type 'MaterialColor' in a constant expression
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: Divider(
                  color: Colors.blueGrey[000],
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10.0),
                // color: Colors.white,
                // By default, color: Colors.white
                child: ListTile(
                  leading: const ImageIcon(AssetImage('images/github.png'),
                      size: 18, color: Colors.blueGrey),
                  title: InkWell(
                    onTap: () =>
                        _launchURL(Uri.parse('https://github.com/Kareem-Zaid')),
                    child: const Text(
                      'https://github.com/Kareem-Zaid',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        // decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ),
              const Card(
                margin: EdgeInsets.all(10.0),
                // color: Colors.white,
                // By default, color: Colors.white
                child: ListTile(
                  leading: Icon(Icons.call, size: 18, color: Colors.blueGrey),
                  title: Text(
                    '+20 101 184 0840\n+966 53 747 3966',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const Card(
                shadowColor: Colors.red,
                margin: EdgeInsets.all(10),
                // color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.email, size: 18, color: Colors.blueGrey),
                  title: Text(
                    'kareem.zaid@hotmail.com',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _launchURL(url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
