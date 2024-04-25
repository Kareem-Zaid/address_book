import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

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
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          // SafeArea keeps stuff inside away from danger area above
          // child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/Leo.jpg'),
              ),
              const Text(
                'كريم زيْد',
                style: TextStyle(
                    fontSize: 38,
                    color: Color.fromARGB(255, 252, 252, 252),
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                    fontFamily: 'Cairo'),
              ),
              Text(
                'مبرمج',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.grey.shade200,
                  // Do not const "Text" widget here, as this color property can't be accessed on the type 'MaterialColor' in a constant expression
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                // decoration: const BoxDecoration(
                //   color: Colors.amber,
                //   shape: BoxShape.rectangle,
                // ),
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(20),
                color: Colors.white,
                child: const Row(
                  // mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Icon(Icons.call, size: 20, color: Colors.blueGrey),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '+20 101 184 0840',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(20),
                color: Colors.white,
                child: const Row(
                  // mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Icon(Icons.email, size: 20, color: Colors.blueGrey),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'kareem.zaid@hotmail.com',
                      style: TextStyle(fontSize: 20),
                    ),
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
