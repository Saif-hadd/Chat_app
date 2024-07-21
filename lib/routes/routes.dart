import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: Routes.forgetPasswordScreen,
      page: () => ForgotPasswordScreen(),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => MainScreen(),
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgetPasswordScreen = '/forgetPasswordScreen';
  static const mainScreen = '/mainScreen';
}
