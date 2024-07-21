import 'package:chat_app/utils/theme.dart';
import 'package:chat_app/view/widgets/auth/auth_button.dart';
import 'package:chat_app/view/widgets/auth/auth_text_from_field.dart';
import 'package:chat_app/view/widgets/auth/check_widget.dart';
import 'package:chat_app/view/widgets/auth/container_under.dart';
import 'package:chat_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
            elevation: 0,
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.3,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, top: 40),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextUtils(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              text: "SIGN",
                              color: mainColor,
                              underLine: TextDecoration.none,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            TextUtils(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              text: "UP",
                              color: Colors.black,
                              underLine: TextDecoration.none,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        AuthTextFromField(
                          controller: nameController,
                          obscureText: false,
                          validator: (value) {
                            // if (value.toString().length <= 2 ||
                            //     !RegExp(validationName).hasMatch(value)) {
                            //   return 'Enter valid name';
                            // } else {
                            //   return null;
                            // }
                          },
                          prefixIcon: Image.asset('assets/images/user.png'),
                          suffixIcon: const Text(""),
                          hintText: 'User Name',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AuthTextFromField(
                          controller: emailController,
                          obscureText: false,
                          validator: (value) {},
                          prefixIcon: Image.asset('assets/images/email.png'),
                          suffixIcon: const Text(""),
                          hintText: 'Email',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AuthTextFromField(
                          controller: passwordController,
                          obscureText: true,
                          validator: (value) {},
                          prefixIcon: Image.asset('assets/images/lock.png'),
                          suffixIcon: const Text(""),
                          hintText: 'Password',
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        CheckWidget(),
                        const SizedBox(
                          height: 50,
                        ),
                        AuthButton(
                          onPressed: () {},
                          text: "SIGN UP",
                        ),
                      ],
                    ),
                  ),
                ),
                ContainerUnder(
                  text: 'Already have an Account?',
                  textType: 'Log in',
                  onPressed: () {},
                ),
              ],
            ),
          )),
    );
  }
}
