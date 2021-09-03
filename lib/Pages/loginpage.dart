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
          builder: (BuildContext context) => const HomePage(),
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
              const SizedBox(
                height: 40,
                width: 200,
                // ignore: unnecessary_const
                child: const Text('Hello Users'),
              ),
              Text(
                'Welcome  $name',
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
                child: Column(
                  // ignore: always_specify_types
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
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
                        decoration: const InputDecoration(labelText: 'Password', hintText: 'Enter password  '),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "password cann't be empty";
                          } else if (value.length < 5) {
                            return 'Password must be atleast 5';
                          }

                          return null;
                        }),
                    const SizedBox(
                      height: 55,
                    ),
                    Material(
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: () => movetoHome(context, nameController.text),
                        child: AnimatedContainer(
                          height: 50,
                          duration: const Duration(seconds: 1),
                          width: changeButton ? 50 : 130,
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  'Login',
                                  // ignore: unnecessary_const
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(changeButton ? 26 : 8),
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
