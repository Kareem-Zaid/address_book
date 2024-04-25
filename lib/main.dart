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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.blueGrey[000],
                ),
              ),
              const Card(
                margin: EdgeInsets.all(10.0),
                // color: Colors.white,
                // By default, color: Colors.white
                child: ListTile(
                  leading: Icon(Icons.call, size: 20, color: Colors.blueGrey),
                  title: Text(
                    '+20 101 184 0840',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Card(
                shadowColor: Colors.red,
                margin: EdgeInsets.all(10),
                // color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.email, size: 20, color: Colors.blueGrey),
                  title: Text(
                    'kareem.zaid@hotmail.com',
                    style: TextStyle(fontSize: 20),
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
