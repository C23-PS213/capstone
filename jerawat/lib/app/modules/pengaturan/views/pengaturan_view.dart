import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/app/modules/widgets/appbar.dart';
import 'package:jerawat/app/modules/widgets/listmenu.dart';
import 'package:jerawat/constants/constants.dart';
import '../../../routes/app_pages.dart';

import '../controllers/pengaturan_controller.dart';

class PengaturanView extends GetView<PengaturanController> {
  const PengaturanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: getPropertionateScreenHeight(38),),
            NamaApp(judul: 'Pengaturan', onTap: (){
              Get.toNamed(Routes.PROFILE);
            },),
            SizedBox(height: getPropertionateScreenHeight(40),),
            Container(
              width: getPropertionateScreenWidht(321),
              height: getPropertionateScreenHeight(480),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kContentColor2,
              ),
              child: Column(
                children: [
                  SizedBox(height: getPropertionateScreenHeight(40),),
                  ListMenu(judul: 'Ganti Password', warna: kContentColor1, onTap: (){
                    Get.toNamed(Routes.GANTIPASSWORD);
                  }),
                  SizedBox(height: getPropertionateScreenHeight(15),),
                  ListMenu(judul: 'Bahasa', warna: kContentColor1, onTap: (){}),
                  SizedBox(height: getPropertionateScreenHeight(15),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
