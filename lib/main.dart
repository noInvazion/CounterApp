// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  void incrementCount() {
    setState(() {
      counter++;
    });
  }

  void decrementCount() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  void resetCount() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("Counter App"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("You pushed the button this many times:"),
            Text(
              "$counter",
              style: TextStyle(fontSize: 35),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  onPressed: incrementCount, child: Text("Increment")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: decrementCount, child: Text("Decrease")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(onPressed: resetCount, child: Text("Reset")),
            ]),
          ]),
        ),
      ),
    );
  }
}

// Style the button next
