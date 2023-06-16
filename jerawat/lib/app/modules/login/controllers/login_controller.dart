import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../register/controllers/register_controller.dart';

class LoginController extends GetxController{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();

  @override
  void onClose() {
    emailC.dispose();
    passwordC.dispose();
    super.onClose();
  }

  void loginUser() async {
    try{
      UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(
          email: emailC.text,
          password: passwordC.text);
      print("Login Berhasil");
      print("User ID = ${userCredential.user!.uid}");

      //route navigasi ke home
      Get.toNamed(Routes.HOME);
    }catch(e){
      // error saat login
      print("login gagal: $e");
      Get.snackbar('ERROR', 'periksa email dan password anda',colorText: Colors.white, backgroundColor: Colors.red);
    }
  }

  void registerUserAndLogin(){
    RegisterController registerController = Get.find<RegisterController>();
    String email = registerController.emailC.text;
    String password = registerController.passwordC.text;

    //melakukan login dengan email dan password yang sudah di registrasi
    emailC.text = email;
    passwordC.text = password;
    loginUser();
  }

}