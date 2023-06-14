import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditprofileController extends GetxController {
  TextEditingController namaC = TextEditingController();
  TextEditingController namaPanggilanC = TextEditingController();

  @override
  void onInit() {
    prepareToEdit();
    super.onInit();
  }
  void prepareToEdit(){
    namaC.text = 'Alwi Jein';
    namaPanggilanC.text = 'Jein';

  }
}
