import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/itemlist.dart';

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
          'Catalog App',
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: Models.products.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: Models.products[index]);
          },
        ),
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
