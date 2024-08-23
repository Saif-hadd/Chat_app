import 'package:chat_app/utils/theme.dart';
import 'package:chat_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const AuthButton({
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: pinkClr,
        minimumSize: const Size(360, 50),
      ),
      child: TextUtils(
        color: Colors.white,
        text: text,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        underLine: TextDecoration.none,
      ),
    );
  }
}
