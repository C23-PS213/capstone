
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/constants/constants.dart';

import '../../../routes/app_pages.dart';
import '../controllers/scanwajah2_controller.dart';

final Scanwajah2Controller controller = Get.put(Scanwajah2Controller());
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
            SizedBox(height: getPropertionateScreenHeight(100),),
            Obx((){
              return Column(
                children: [
                  Center(
                    child: Container(
                      width: getPropertionateScreenWidht(200),
                      height: getPropertionateScreenHeight(200),
                      decoration: BoxDecoration(
                        image: controller.imagePath.isNotEmpty
                            ? DecorationImage(
                          image:
                          FileImage(File(controller.imagePath.toString())),
                          fit: BoxFit.cover,
                        )
                            : null,
                      ),
                    ),
                  ),
                ],
              );
            }),
            SizedBox(height: getPropertionateScreenHeight(50),),
            Center(
              child: InkWell(
                onTap: (){
                  controller.getImage();
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
                onTap: (){
                  Get.toNamed(Routes.HASILFOTO);
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
                      'Simpan Gambari',
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
                  Get.toNamed(Routes.HASILFOTO);
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
                      'Simpan Gambari',
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
