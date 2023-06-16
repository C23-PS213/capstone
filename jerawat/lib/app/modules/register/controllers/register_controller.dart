import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jerawat/app/data/models/user_model.dart';

import '../../../routes/app_pages.dart';

class RegisterController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();
  final TextEditingController phoneC = TextEditingController();
  final TextEditingController namaLengkapC = TextEditingController();
  final TextEditingController namaPanggilanC = TextEditingController();
  final TextEditingController usiaC = TextEditingController();


  @override
  void onClose() {
    emailC.dispose();
    passwordC.dispose();
    phoneC.dispose();
    namaLengkapC.dispose();
    namaPanggilanC.dispose();
    usiaC.dispose();
    super.onClose();
  }

  Future<void> addData() async {
    if (validasiData()) {
      int? telpong = int.tryParse(phoneC.text);
      int? usia = int.tryParse(usiaC.text);
      if (telpong != null) {
        UserModel user = UserModel(
          email: emailC.text,
          password: passwordC.text,
          phone: telpong,
          namaLengkap: namaLengkapC.text,
          namaPanggilan: namaPanggilanC.text,
          usia: usia
        );
        bool success = await registUser(user);
        if (success) {
          Get.toNamed(Routes.HOME);
        }
      } else {
        Get.snackbar('ERROR', 'Nomor Telepon Harus Berupa Angka',
            colorText: Colors.white, backgroundColor: Colors.red);
      }
    } else {
      Get.snackbar('ERROR', 'Email dan Nomor harus diisi',
          colorText: Colors.white, backgroundColor: Colors.red);
    }
  }

  bool validasiData() {
    if (emailC.text.isEmpty || phoneC.text.isEmpty) {
      return false;
    }
    return true;
  }

  Future<bool> registUser(UserModel user) async {
    try {
      UserCredential userCredential =
      await _auth.createUserWithEmailAndPassword(
        email: user.email!,
        password: user.password!,
      );

      // Menyimpan data pengguna ke Firestore
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({
        'email': user.email,
        'phone': user.phone,
        'password': user.password,
        'namaLengkap': user.namaLengkap,
        'namaPanggilan': user.namaPanggilan,
        'usia': user.usia,
        // tambahkan data lain yang ingin Anda simpan
      });

      Get.snackbar('SUCCESS', 'Registrasi berhasil',
          backgroundColor: Colors.green, colorText: Colors.white);

      // User berhasil diregistrasi, lakukan sesuatu setelah registrasi berhasil
      print("REGISTRASI BERHASIL");
      print("User ID: ${userCredential.user!.uid}");
      return true; // Mengembalikan nilai true untuk menandakan berhasil
    } catch (e) {
      Get.snackbar('GAGAL', 'email sudah digunakan',
          backgroundColor: Colors.red, colorText: Colors.white);
      print("REGISTRASI GAGAL: $e");
      return false; // Mengembalikan nilai false untuk menandakan gagal
    }
  }
}




// class RegisterController extends GetxController {
//   //pendeklarasian variabel controller form regis
//   final emailC = TextEditingController();
//   final passwordC = TextEditingController();
//   final phoneC = TextEditingController();
//
//
//   //melakukan koneksi kedalam collection firestore
//   final CollectionReference userCollection = FirebaseFirestore.instance
//       .collection('users');
//
//   @override
//   void onClose() {
//     emailC.dispose();
//     passwordC.dispose();
//     phoneC.dispose();
//     super.onClose();
//   }
//
//   void addData() {
//     if (validasiData()) {
//       int? phoneNumber = int.tryParse(phoneC.text);
//       if (phoneNumber != null) {
//         UserModel user = UserModel(
//           email: emailC.text,
//           password: passwordC.text,
//           phone: phoneNumber,
//         );
//         registUser(user).then((success) {
//           if (success) {
//             Get.toNamed(Routes.DATADIRI1);
//           }
//         });
//       } else {
//         Get.snackbar(
//           'ERROR',
//           'Phone harus berupa angka',
//           backgroundColor: Colors.redAccent,
//         );
//       }
//     } else {
//       Get.snackbar(
//         'ERROR',
//         'EMAIL TIDAK BOLEH KOSONG',
//         backgroundColor: Colors.redAccent,
//       );
//     }
//   }
//
//
//   bool validasiData() {
//     if (emailC.text.isEmpty) {
//       return false;
//     }
//     return true;
//   }
//
//   Future<bool> registUser(UserModel user) async {
//     try {
//       DocumentReference docRef = await userCollection.add(user.toJson());
//       String uid = docRef.id;
//       user.uid = uid;
//       await docRef.set(user.toJson());
//       Get.snackbar(
//         'SUKSES',
//         'REGISTRASI BERHASIL',
//         backgroundColor: Colors.greenAccent,
//         colorText: Colors.white,
//       );
//       print("BERHASIL");
//       return true;
//     } catch (e) {
//       Get.snackbar(
//         'ERROR',
//         'REGISTRASI GAGAL',
//         backgroundColor: Colors.red,
//         colorText: Colors.white,
//       );
//       print("REGISTRASI ERROR");
//       return false;
//     }
//   }
// }


