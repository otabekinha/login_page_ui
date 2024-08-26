import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page/components/custom_button.dart';
import 'package:login_page/components/custom_icon.dart';
import 'package:login_page/components/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailContoller = TextEditingController();
  final TextEditingController _passwordContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 145, 218, 252),
              Color.fromARGB(255, 193, 233, 251),
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 193, 235, 255),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 6),
                      )
                    ],
                  ),
                  child: const Icon(Icons.login, size: 40),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Sign in with email',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  textAlign: TextAlign.center,
                  'Effortlessly manage & track orders from customers to the kitchen with real-time updates.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(height: 25),
                CustomTextField(
                  controller: _emailContoller,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.grey.shade500,
                    size: 22,
                  ),
                  hintText: 'Email',
                  obsecureText: false,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: _passwordContoller,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey.shade500,
                    size: 22,
                  ),
                  hintText: 'Password',
                  obsecureText: true,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_off,
                      size: 22,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  buttonText: 'Get Started',
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    Text(
                      ' Or sign in with ',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomIcon(
                        icon: FontAwesomeIcons.google, color: Colors.red),
                    const CustomIcon(
                        icon: FontAwesomeIcons.facebook, color: Colors.blue),
                    CustomIcon(
                      icon: FontAwesomeIcons.apple,
                      color: Colors.grey.shade900,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
