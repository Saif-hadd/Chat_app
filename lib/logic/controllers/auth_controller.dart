import 'package:chat_app/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  bool isVisibility = false;
  bool isCheckBox = false;
  // var displayUserName = ''.obs;
  // var displayUserPhoto = ''.obs;
  // var displayUserEmail = ''.obs;
  // FirebaseAuth auth = FirebaseAuth.instance;
  // var googleSignIn = GoogleSignIn();

  // var isSignedIn = false;
  // final GetStorage authBox = GetStorage();

  // User? get userProfile => auth.currentUser;

  // @override
  // void onInit() {
  //   displayUserName.value = userProfile?.displayName ?? "";
  //   displayUserPhoto.value = userProfile?.photoURL ?? "";
  //   displayUserEmail.value = userProfile?.email ?? "";

  //   super.onInit();
  // }

  void visibility() {
    isVisibility = !isVisibility;
    update();
  }

  void checkBox() {
    isCheckBox = !isCheckBox;
    update();
  }
}

//   void signUpUsingFirebase({
//     required String name,
//     required String email,
//     required String password,
//   }) async {
//     try {
//       await auth
//           .createUserWithEmailAndPassword(email: email, password: password)
//           .then((value) {
//         displayUserName.value = name;
//         auth.currentUser!.updateDisplayName(name);
//       });

//       update();
//     } on FirebaseAuthException catch (error) {
//       _handleAuthError(error);
//     } catch (error) {
//       _showErrorSnackbar(error);
//     }
//   }

//   void logInUsingFirebase({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       await auth
//           .signInWithEmailAndPassword(email: email, password: password)
//           .then((value) {
//         displayUserName.value = auth.currentUser!.displayName!;
//       });

//       isSignedIn = true;
//       authBox.write("auth", isSignedIn);

//       update();
//     } on FirebaseAuthException catch (error) {
//       _handleAuthError(error);
//     } catch (error) {
//       _showErrorSnackbar(error);
//     }
//   }

//   void googleSignUpApp() async {
//     try {
//       final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
//       displayUserName.value = googleUser!.displayName!;
//       displayUserPhoto.value = googleUser.photoUrl!;
//       displayUserEmail.value = googleUser.email;

//       GoogleSignInAuthentication googleSignInAuthentication =
//           await googleUser.authentication;
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         idToken: googleSignInAuthentication.idToken,
//         accessToken: googleSignInAuthentication.accessToken,
//       );

//       await auth.signInWithCredential(credential);

//       isSignedIn = true;
//       authBox.write("auth", isSignedIn);
//       update();
//     } catch (error) {
//       _showErrorSnackbar(error);
//     }
//   }

//   void resetPassword(String email) async {
//     try {
//       await auth.sendPasswordResetEmail(email: email);
//       update();
//       Get.back();
//     } on FirebaseAuthException catch (error) {
//       _handleAuthError(error);
//     } catch (error) {
//       _showErrorSnackbar(error);
//     }
//   }

//   void signOutFromApp() async {
//     try {
//       await auth.signOut();
//       await googleSignIn.signOut();
//       displayUserName.value = '';
//       displayUserPhoto.value = '';
//       displayUserEmail.value = '';
//       isSignedIn = false;
//       authBox.remove("auth");
//       update();

//       Get.offNamed(Routes.welcomeScreen);
//     } catch (error) {
//       _showErrorSnackbar(error);
//     }
//   }

//   void _handleAuthError(FirebaseAuthException error) {
//     String title = error.code.replaceAll(RegExp('-'), ' ').capitalize!;
//     String message = '';

//     if (error.code == 'weak-password') {
//       message = ' Provided Password is too weak.. ';
//     } else if (error.code == 'email-already-in-use') {
//       message = ' Account Already exists for that email.. ';
//     } else {
//       message = error.message.toString();
//     }

//     Get.snackbar(
//       title,
//       message,
//       snackPosition: SnackPosition.BOTTOM,
//       backgroundColor: Colors.green,
//       colorText: Colors.white,
//     );
//   }

//   void _showErrorSnackbar(dynamic error) {
//     Get.snackbar(
//       'Error!',
//       error.toString(),
//       snackPosition: SnackPosition.BOTTOM,
//       backgroundColor: Colors.green,
//       colorText: Colors.white,
//     );
//   }
// }
