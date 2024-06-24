import 'package:flutter/material.dart';
import 'package:traverse/misc/colors.dart';
import 'package:traverse/pages/nav_page.dart';
import 'package:traverse/widgets/app_large_text.dart';
import 'package:traverse/widgets/my_button.dart';
import 'package:traverse/widgets/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppLargeText(text: "Hey,"),
                const AppLargeText(text: "Welcome back!"),
                const AppLargeText(
                  text: "Login to continue.",
                  color: Color.fromARGB(255, 24, 130, 216),
                ),
                const SizedBox(height: 170),
                Column(
                  children: [
                    MyTextfield(
                      controller: emailController,
                      hintText: "Email",
                      obscureText: false,
                    ),
                    const SizedBox(height: 25),
                    MyTextfield(
                      controller: passwordController,
                      hintText: "Password",
                      obscureText: false,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Forgot Password?/",
                            style: TextStyle(color: AppColors.bigTextColor),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "Reset",
                              style: TextStyle(
                                  color: AppColors.bigTextColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 80),
                    MyButton(
                      text: "Login",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NavPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "If you are new / ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("By Signing in, I accept all the "),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "terms and conditions",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
