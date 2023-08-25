import 'package:flutter/material.dart';
import 'package:poppy_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  // moveToHome(BuildContext context) async {
  moveToHome(BuildContext context) {
    // _formKey.currentState!... MEANS _formKey.currentState is NOT NULL
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      // await Future.delayed(const Duration(seconds: 1));
      // await Navigator.pushNamed(context, MyRoutes.homeRoute);
      Navigator.pushNamed(context, MyRoutes.homeRoute);

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
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Image.asset(
                "assets/images/mobile_login_2.png",
                height: 200.0,
                width: 200.0,
                fit: BoxFit.fill, //.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "User name:",
                        hintText: "Enter user name",
                      ),
                      validator: (value) {
                        // value!... MEANS value is NOT NULL
                        if (value!.trim().isEmpty) {
                          return "User name cannot be empty";
                        }
                        return null;
                      },
                      onChanged: ((value) {
                        name = value;
                        setState(() {});
                      }),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password:",
                        hintText: "Enter password",
                      ),
                      validator: (value) {
                        // value!... MEANS value is NOT NULL
                        if (value!.trim().isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.trim().length < 6) {
                          return "Password should have atleast 6 characters";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 45.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 7),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(
                            seconds: 1,
                          ),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                        ),
                      ),
                    ),

                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   style:
                    //       TextButton.styleFrom(minimumSize: const Size(145, 45)),
                    //   child: const Text("Login"),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
