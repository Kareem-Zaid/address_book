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
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          // SafeArea keeps stuff inside away from danger area above
          //child: Center(
          child: Column(
            // Simply, replace "Column" with "Row"
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // Space effect is not felt if minAxisSize: MainAxisSize.min
            // By default, mainAxisAlignment: MainAxisAlignment.start
            crossAxisAlignment: CrossAxisAlignment.end,
            // Effect is not felt if children widths are the same
            // By default, crossAxisAlignment: CrossAxisAlignment.center
            // CrossAxisAlignment.stretch is good
            verticalDirection: VerticalDirection.up,
            // By default, verticalDirection: VerticalDirection.down
            children: [
              Container(
                color: Colors.red,
                // Childless-Container color neglects/covers the - safe-area - background color inside Scaffold
                height: 200,
                width: 150,
                // margin: const EdgeInsets.fromLTRB(100, 200, 150, 300),
                // padding: const EdgeInsets.only(left: 20),
                child: const Center(child: Text('One')),
              ),
              const SizedBox(height: 10, width: 10),
              Container(
                color: Colors.white,
                // Childless-Container color neglects/covers the - safe-area - background color inside Scaffold
                height: 200,
                width: 300,
                child: const Center(child: Text('Two')),
              ),
              const SizedBox(height: 10, width: 10),
              Container(
                color: Colors.black,
                // Childless-Container color neglects/covers the - safe-area - background color inside Scaffold
                height: 200,
                width: 150,
                child: const Center(
                  child: Text(
                    'Three',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 10, width: 10),
              Container(
                width: double.infinity,
                // height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
