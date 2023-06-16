import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/app/modules/scanwajah1/components/galeri.dart';
import 'package:jerawat/constants/constants.dart';
import 'package:jerawat/app/modules/widgets/appbar.dart';

import '../../../routes/app_pages.dart';
import '../controllers/scanwajah1_controller.dart';

class Scanwajah1View extends GetView<Scanwajah1Controller> {
  const Scanwajah1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: getPropertionateScreenHeight(38),),
                Container(
                    child: NamaApp(judul: 'Scan Wajah', onTap: (){
                      Get.toNamed(Routes.HOME);
                    },),
                ),
                SizedBox(height: getPropertionateScreenHeight(91),),
                Container(
                  width: getPropertionateScreenWidht(160),
                  height: getPropertionateScreenHeight(160),
                  decoration: BoxDecoration(
                    color: Color(0xFFE8E8E4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: (){
                      Get.toNamed(Routes.SCANWAJAH2);
                    },
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(50),
                ),
                Text(
                  'Galeri',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(height: getPropertionateScreenHeight(30),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
