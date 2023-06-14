import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/constants/constants.dart';

import '../../../routes/app_pages.dart';
import '../controllers/scanwajah2_controller.dart';

class Scanwajah2View extends GetView<Scanwajah2Controller> {

  const Scanwajah2View({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: getPropertionateScreenHeight(500),),
            Center(
              child: InkWell(
                onTap: (){},
                child: Container(
                  width: getPropertionateScreenWidht(321),
                  height: getPropertionateScreenHeight(50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFE8E8E4),
                  ),
                  child: Center(
                    child: Text(
                      'Ambil Kamera',
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: getPropertionateScreenHeight(5),),
            Center(
              child: InkWell(
                onTap: (){},
                child: Container(
                  width: getPropertionateScreenWidht(321),
                  height: getPropertionateScreenHeight(50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFE8E8E4),
                  ),
                  child: Center(
                    child: Text(
                      'Ambil Galeri',
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: getPropertionateScreenHeight(5),),
            Center(
              child: InkWell(
                onTap: (){
                  Get.toNamed(Routes.SCANWAJAH1);
                },
                child: Container(
                  width: getPropertionateScreenWidht(321),
                  height: getPropertionateScreenHeight(50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFE8E8E4),
                  ),
                  child: Center(
                    child: Text(
                      'Batalkan',
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: getPropertionateScreenHeight(5),),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() => Image.file(File(controller.imagePath.value))),
                  ElevatedButton(
                      onPressed: (){
                        controller.pickImage();
                      },
                      child: Text(
                        'pilih gambar'
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
