import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilities/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              'Welcome  $name',
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
                    onChanged: (val) {
                      name = val;
                      setState(() {});
                    },
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
                    height: 55,
                  ),

                  InkWell(
                    onTap: () async {
                      //Navigator.pushNamed(context, MyRoutes.homeRoute);
                      setState(() {
                        changeButton = true;
                      });

                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      height: 50,
                      // ignore: prefer_const_constructors
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 130,
                      //color: Colors.deepPurple,
                      //alignment: Alignment.center,
                      // ignore: prefer_const_constructors

                      child: changeButton
                          // ignore: prefer_const_constructors
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          // ignore: prefer_const_constructors
                          : Text('Login',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                      alignment: Alignment.center,
                      // ignore: prefer_const_constructors
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          // shape:     changeButton ? BoxShape.circle : BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 26 : 8)),
                      // ignore: prefer_const_constructors
                      //duration: Duration(seconds: 1),
                    ),
                  ),

                  // ElevatedButton(
                  //   // ignore: prefer_const_constructors
                  //   child: Text('login'),
                  //   style: TextButton.styleFrom(minimumSize: Size(120, 38)),
                  //   // style: ButtonStyle(
                  //   //     shape:
                  //   //         MaterialStateProperty.all<RoundedRectangleBorder>(
                  //   //             RoundedRectangleBorder(
                  //   //                 borderRadius: BorderRadius.circular(40))),
                  //   //     side: BorderSide(color: Colors.red)),
                  //   onPressed: () {
                  //     print(' hello  ');
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
