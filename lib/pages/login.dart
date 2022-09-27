// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool button = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.contain,
              ),
              const SizedBox(
                  height: 40,
                  child: Text(
                    "Please....",
                    style: TextStyle(
                      fontFamily: "monospace",
                    ),
                  )),
              Text(
                "Login $name",
                style: const TextStyle(
                  fontSize: 34,
                  fontFamily: "monospace",
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Your Name", labelText: "Name"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Your Password", labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    // hoverColor: const Color.fromARGB(163, 0, 68, 255),
                    // splashColor: Colors.amber,
                    borderRadius: BorderRadius.circular(60),
                    onTap: () async {
                      setState(() {
                        button = true;
                      });
                      await Future.delayed(const Duration(milliseconds: 200));
                      Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    },
                    child: AnimatedContainer(
                        width: button ? 40 : 160,
                        height: 40,
                        // color: Colors.amber,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: button
                                ? BorderRadius.circular(60)
                                : BorderRadius.circular(10)),
                        duration: const Duration(milliseconds: 200),
                        child: button
                            ? const Icon(Icons.done)
                            : const Text("Login",
                                style: TextStyle(
                                  color: Colors.white,
                                ))),
                  )
                  // ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  //     },
                  //     style: const ButtonStyle(
                  //       minimumSize: MaterialStatePropertyAll(Size(160, 40)),
                  //     ),
                  //     child: const Text(
                  //       "Login",
                  //       // style: TextStyle(fontSize: 24),
                  //     ))
                ]),
              )
            ],
          ),
        ));
  }
}
