import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jerawat/app/data/models/user_model.dart';

import '../../../data/models/datadiri_model.dart';
import '../../../routes/app_pages.dart';

class Datadiri2Controller extends GetxController {
  // final namaPanggilanC = TextEditingController();
  //
  // // Melakukan koneksi kedalam collection firestore
  // final CollectionReference userCollection = FirebaseFirestore.instance
  //     .collection('users');
  //
  // @override
  // void onClose() {
  //   namaPanggilanC.dispose();
  //   super.onClose();
  // }
  //
  // void addData() {
  //   if (validasiData()) {
  //     UserModel user = UserModel(
  //       namaLengkap: namaPanggilanC.text,
  //     );
  //     registUser(user).then((success) {
  //       if (success) {
  //         Get.toNamed(Routes.DATADIRI4);
  //       }
  //     });
  //   } else {
  //     Get.snackbar(
  //       'ERROR',
  //       'NAMA TIDAK BOLEH KOSONG',
  //       backgroundColor: Colors.redAccent,
  //     );
  //   }
  // }
  //
  // bool validasiData() {
  //   if (namaPanggilanC.text.isEmpty) {
  //     return false;
  //   }
  //   return true;
  // }
  //
  // Future<bool> registUser(UserModel user) async {
  //   try {
  //     DocumentReference docRef = await userCollection.add(user.toJson());
  //     String uid = docRef.id;
  //     user.uid = uid;
  //     await docRef.set(user.toJson());
  //     Get.snackbar(
  //       'SUKSES',
  //       'NAMA PANGGILAN BERHASIL',
  //       backgroundColor: Colors.greenAccent,
  //       colorText: Colors.white,
  //     );
  //     print("BERHASIL");
  //     return true;
  //   } catch (e) {
  //     Get.snackbar(
  //       'ERROR',
  //       'NAMA PANGGILAN GAGAL',
  //       backgroundColor: Colors.red,
  //       colorText: Colors.white,
  //     );
  //     print("NAMA LENGKAP ERROR");
  //     return false;
  //   }
  // }
}
