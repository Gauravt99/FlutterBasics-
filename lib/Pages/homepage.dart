import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var age = 22;
    var name = ' Jhon Doe';

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
