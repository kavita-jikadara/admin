// import 'package:admin_panel/signup.dart';
// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:main_panel/bottom.dart';
import 'package:main_panel/signupscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formfield = GlobalKey<FormState>();
  final userController = TextEditingController();
  final pwdController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login Now",
          style: TextStyle(
              color: Color.fromARGB(255, 122, 14, 8),
              fontWeight: FontWeight.w600,
              fontSize: 26),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formfield,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset(
                //   "assets/images/image.png",
                //   height: 200,
                //   width: double.infinity,
                // ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.blue), // Text color
                    controller: userController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(0.0),
                      labelText: '  User Name ',
                      border: const OutlineInputBorder(),
                      labelStyle: const TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ), // Label text color
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.blue), // Border color
                        borderRadius:
                            BorderRadius.circular(10.0), // Border radius
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.blue), // Focused border color
                        borderRadius:
                            BorderRadius.circular(10.0), // Border radius
                      ),
                      prefixIcon: const Icon(
                        Icons.person_add_alt_outlined,
                        size: 22,
                        color: Color.fromARGB(255, 125, 125, 125),
                      ),

                      filled: true,
                      fillColor: Colors.grey[200], // Background color
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter username"; // Return a message when the field is empty
                      }
                      return null; // Return null when the input is valid
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.blue), // Text color
                    controller: pwdController,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(0.0),
                      labelText: '  Password ',
                      border: const OutlineInputBorder(),

                      labelStyle: const TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ), // Label text color
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.blue), // Border color
                        borderRadius:
                            BorderRadius.circular(10.0), // Border radius
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.blue), // Focused border color
                        borderRadius:
                            BorderRadius.circular(10.0), // Border radius
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        size: 22,
                        color: Color.fromARGB(255, 125, 125, 125),
                      ),
                      suffix: Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              passToggle = !passToggle;
                            });
                          },
                          child: Icon(
                            passToggle
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200], // Background color
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter password"; // Return a message when the field is empty
                      }
                      return null; // Return null when the input is valid
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    if (_formfield.currentState!.validate()) {
                      if (userController.text == 'admin' &&
                          pwdController.text == 'admin') {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => bottom()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Invalid username or password.'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      }
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
