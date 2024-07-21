import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat_app/routes/routes.dart';
import 'package:chat_app/view/widgets/auth/auth_button.dart';
import 'package:chat_app/view/widgets/auth/auth_text_from_field.dart';
import 'package:chat_app/view/widgets/text_utils.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final fromKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Placeholder function for login logic
  void logIn(String email, String password) {
    // Implement login logic here
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Get.isDarkMode ? Colors.grey[900] : Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
                  child: Form(
                    key: fromKey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextUtils(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              text: "LOG",
                              color: Get.isDarkMode ? Colors.pink : Colors.blue,
                              underLine: TextDecoration.none,
                            ),
                            const SizedBox(width: 3),
                            TextUtils(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              text: "IN",
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black,
                              underLine: TextDecoration.none,
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        AuthTextFromField(
                          controller: emailController,
                          obscureText: false,
                          validator: (value) {
                            if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                .hasMatch(value)) {
                              return 'Invalid email';
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: Get.isDarkMode
                              ? const Icon(Icons.email,
                                  color: Colors.pink, size: 30)
                              : Image.asset('assets/images/email.png'),
                          suffixIcon: const Text(""),
                          hintText: 'Email',
                        ),
                        const SizedBox(height: 20),
                        AuthTextFromField(
                          controller: passwordController,
                          obscureText: true,
                          validator: (value) {
                            if (value!.length < 6) {
                              return 'Password should be longer or equal to 6 characters';
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: Get.isDarkMode
                              ? const Icon(Icons.lock,
                                  color: Colors.pink, size: 30)
                              : Image.asset('assets/images/lock.png'),
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            onPressed: () {
                              // Handle password visibility toggle
                            },
                            icon: const Icon(Icons.visibility,
                                color: Colors.black),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.forgetPasswordScreen);
                            },
                            child: TextUtils(
                              text: 'Forgot Password?',
                              fontSize: 14,
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black,
                              underLine: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        AuthButton(
                          onPressed: () {
                            if (fromKey.currentState!.validate()) {
                              String email = emailController.text.trim();
                              String password = passwordController.text;
                              logIn(email, password); // Call the login function
                            }
                          },
                          text: "LOG IN",
                        ),
                        const SizedBox(height: 20),
                        TextUtils(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          text: "OR",
                          color: Get.isDarkMode ? Colors.white : Colors.black,
                          underLine: TextDecoration.none,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                // Implement Google Sign-In logic here
                              },
                              child: Image.asset("assets/images/google.png"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    Get.offNamed(Routes.signUpScreen);
                  },
                  child: TextUtils(
                    text: "Don't have an Account? Sign up",
                    fontSize: 16,
                    color: Colors.blue,
                    underLine: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
