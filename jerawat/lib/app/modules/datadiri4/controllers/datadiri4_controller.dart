import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/datadiri_model.dart';
import '../../../routes/app_pages.dart';

class Datadiri4Controller extends GetxController {
  final usiaC = TextEditingController();

  // Melakukan koneksi kedalam collection firestore
  final CollectionReference userCollection = FirebaseFirestore.instance
      .collection('dataDiri');

  @override
  void onClose() {
    usiaC.dispose();
    super.onClose();
  }

  void addData() {
    if (validasiData()) {
      DataDiriModel datadiri4 = DataDiriModel(
        namaLengkap: usiaC.text,
      );
      registUser(datadiri4).then((success) {
        if (success) {
          Get.toNamed(Routes.DATADIRI5);
        }
      });
    } else {
      Get.snackbar(
        'ERROR',
        'NAMA TIDAK BOLEH KOSONG',
        backgroundColor: Colors.redAccent,
      );
    }
  }

  bool validasiData() {
    if (usiaC.text.isEmpty) {
      return false;
    }
    return true;
  }

  Future<bool> registUser(DataDiriModel datadiri4) async {
    try {
      DocumentReference docRef = await userCollection.add(datadiri4.toJson());
      String uid = docRef.id;
      datadiri4.uid = uid;
      await docRef.set(datadiri4.toJson());
      Get.snackbar(
        'SUKSES',
        'NAMA LENGKAP BERHASIL',
        backgroundColor: Colors.greenAccent,
        colorText: Colors.white,
      );
      print("BERHASIL");
      return true;
    } catch (e) {
      Get.snackbar(
        'ERROR',
        'NAMA LENGKAP GAGAL',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      print("NAMA LENGKAP ERROR");
      return false;
    }
  }
}
