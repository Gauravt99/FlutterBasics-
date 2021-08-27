import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = ' ';
  bool changeButton = false;
  final GlobalKey<FormState> _formkKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // ignore: avoid_void_async
  void movetoHome(BuildContext context, String name) async {
    if (_formkKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future<dynamic>.delayed(const Duration(seconds: 1));
      await Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => HomePage(name: name),
        ),
      );
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkKey,
          child: Column(
            // ignore: always_specify_types
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
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
                child: Column(
                  // ignore: always_specify_types
                  children: [
                    TextFormField(
                      controller: nameController,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        hintText: 'Enter username',
                        labelText: 'Username',
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Username can't be empty";
                        }

                        return null;
                      },

                      onChanged: (String value) {
                        name = value;
                        setState(() {});
                      },
                    ),

                    TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter password  '),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "password cann't be empty";
                          } else if (value.length < 5) {
                            return 'Password must be atleast 5';
                          }

                          return null;
                        }),

                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 55,
                    ),

                    Material(
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: () => movetoHome(context, nameController.text),
                        child: AnimatedContainer(
                          height: 50,
                          // ignore: prefer_const_constructors
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 130,
                          child: changeButton
                              // ignore: prefer_const_constructors
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              // ignore: prefer_const_constructors
                              : Text(
                                  'Login',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                          alignment: Alignment.center,
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 26 : 8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
