import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/itemlist.dart';

class HomePage extends StatefulWidget {
  final String name;
  // ignore: sort_constructors_first
  const HomePage({Key? key, required this.name}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  dynamic loadData() async {
    // to load json file
    // ignore: always_specify_types
    var catalogjson = await rootBundle.loadString('assets/Data/catalog.json');
    // ignore: prefer_final_locals
    dynamic decodedData = jsonDecode(catalogjson);
    print(decodedData);
  }

  @override
  Widget build(BuildContext context) {
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
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: Models.products.length,
          // ignore: always_specify_types
          itemBuilder: (context, index) {
            return ItemWidget(item: Models.products[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 8.0,
          // ignore: prefer_const_constructors
          child: Icon(Icons.add),
          onPressed: () {
            print('I am Floating Action Button');
          }),
      // ignore: prefer_const_constructors
      drawer: MyDrawer(),
    );
  }
}
