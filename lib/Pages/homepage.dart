import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name;
  // ignore: sort_constructors_first
  const HomePage({Key? key, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const int age = 22;

    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('hello my name is $name & my age is $age'),
      ),
    );
  }
}
