import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:udemy_shop_app/logic/bindings/auth_biniding.dart';
// import 'package:udemy_shop_app/logic/bindings/main_binding.dart';
// import 'package:udemy_shop_app/logic/bindings/product_binding.dart';
// import 'package:udemy_shop_app/logic/controllers/product_controller.dart';
import 'package:chat_app/view/screens/auth/forget_password_screen.dart';
import 'package:chat_app/view/screens/auth/login_screen.dart';
import 'package:chat_app/view/screens/auth/signup_screen.dart';
import 'package:chat_app/view/screens/main_screen.dart';

import 'package:chat_app/view/screens/welcome_screen.dart';

class AppRoutes {
  //initialRoute

  static const welcome = Routes.welcomeScreen;

  //getPages

  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
}
