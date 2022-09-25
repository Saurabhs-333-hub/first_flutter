import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color.fromARGB(255, 255, 255, 255),
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
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 20,
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
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Your Password", labelText: "Password"),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Login"))
              ]),
            )
          ],
        ));
  }
}
