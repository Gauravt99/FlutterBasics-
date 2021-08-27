import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        // column has multiple childrens

        children: [
          Image.asset(
            'assets/images/loginimg.png',
            fit: BoxFit.cover,
          ),

          // ignore: prefer_const_constructors
          SizedBox(
            height: 40,
            width: 200,
            // ignore: prefer_const_constructors
            child: Text('Hello Users'),
          ),

          // ignore: prefer_const_constructors
          Text(
            'Welcome to login',
            // ignore: prefer_const_constructors
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          // ignore: prefer_const_constructors
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
            child: Column(
              children: [
                TextFormField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      labelText: 'User Name', hintText: 'Enter username   '),
                ),
                TextFormField(
                  // ignore: prefer_const_constructors
                  obscureText: true,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      labelText: 'Password', hintText: 'Enter password   '),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 35,
                ),
                ElevatedButton(
                  child: Text('login'),
                  onPressed: () {
                    print(' hello  ');
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
