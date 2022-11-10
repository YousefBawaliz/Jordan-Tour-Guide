import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../home.dart';
import '../project-components/customized_button.dart';
import '../project-components/customized_textfield.dart';
import 'forgot_passwor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Welcome Back! Glad \nto see you again",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
          ),
          CustomizedTextfield(
            myController: _emailController,
            hintText: "Enter your Email",
            isPassword: false,
          ),
          CustomizedTextfield(
            myController: _passwordController,
            hintText: "Enter your Password",
            isPassword: true,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPassword()));
                },
                child: const Text("Forgot Password?",
                    style: TextStyle(
                      color: Color(0xff6A707C),
                      fontSize: 15,
                    )),
              ),
            ),
          ),
          CustomizedButton(
              buttonText: "Login",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Home();
                }));
              }),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.height * 0.15,
                  color: Colors.grey,
                ),
                const Text("Or Login with"),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.height * 0.18,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                    )),
                // Container(
                //   height: 50,
                //   width: 100,
                //   decoration: BoxDecoration(
                //     border: Border.all(color: Colors.black, width: 1),
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: IconButton(
                //     icon: const Icon(
                //       Ic,
                //        color: Colors.black,
                //     ),
                //     onPressed: () {}
                //   ),
                // ),
                Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.apple,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 140,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(48, 8, 8, 8.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text("Don't have an account?",
                    style: TextStyle(
                      color: Color(0xff1E232C),
                      fontSize: 15,
                    )),
                Text("  Register Now",
                    style: TextStyle(
                      color: Color(0xff35C2C1),
                      fontSize: 15,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
