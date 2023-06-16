import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/constants/constants.dart';

import '../../scanwajah2/controllers/scanwajah2_controller.dart';
import '../controllers/hasilfoto_controller.dart';

final Scanwajah2Controller controller = Get.find<Scanwajah2Controller>();
class HasilfotoView extends GetView<HasilfotoController> {
  const HasilfotoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        width: getPropertionateScreenWidht(200),
        height: getPropertionateScreenHeight(200),
        child: Image.file(
          File(controller.imagePath.value),
        ),
      ),
    );
  }
}
