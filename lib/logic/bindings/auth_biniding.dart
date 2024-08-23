import 'package:get/instance_manager.dart';
import 'package:chat_app/logic/controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
