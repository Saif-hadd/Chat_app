import 'package:chat_app/utils/theme.dart';
import 'package:chat_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckWidget extends StatelessWidget {
  CheckWidget({Key? key}) : super(key: key);

  // final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    // return GetBuilder<AuthController>(builder: (_) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            // Define your action on tap here
          },
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/images/check.png'),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            TextUtils(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              text: "I accept ",
              color: Colors.black,
              underLine: TextDecoration.none,
            ),
            TextUtils(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              text: "terms & conditions",
              color: Colors.black,
              underLine: TextDecoration.underline,
            ),
          ],
        ),
      ],
    );
  }
}
