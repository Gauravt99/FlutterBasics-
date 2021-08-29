import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final String name;
  // ignore: sort_constructors_first
  const HomePage({Key? key, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const int age = 22;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          'Catlog App',
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Text('hello my name is $name & my age is $age'),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 8.0,
          child: Icon(Icons.add),
          onPressed: () {
            print('I am Floating Action Button');
          }),
      // ignore: prefer_const_constructors
      drawer: MyDrawer(),
    );
  }
}
