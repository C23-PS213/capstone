import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/app/modules/widgets/appbar.dart';
import 'package:jerawat/app/modules/widgets/formprofile.dart';
import 'package:jerawat/constants/constants.dart';
import '../../../routes/app_pages.dart';

import '../controllers/informasipribadi_controller.dart';

class InformasipribadiView extends GetView<InformasipribadiController> {
  const InformasipribadiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: getPropertionateScreenHeight(28),),
            Container(
              child: NamaApp(judul: 'Informasi Pribadi', onTap: (){
                Get.toNamed(Routes.PROFILE);
              }),
            ),
            SizedBox(height: getPropertionateScreenHeight(36),),
            Container(
              width: getPropertionateScreenWidht(100),
              height: getPropertionateScreenHeight(100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xFFD9D9D9),
              ),
            ),
            SizedBox(height: getPropertionateScreenHeight(39),),
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
                  FormProfile(judul: 'Nama Lengkap', form: 'Ahmad Jayadi'),
                  SizedBox(height: getPropertionateScreenHeight(15),),
                  FormProfile(judul: 'Nama Panggilan', form: 'Jayadi'),
                  SizedBox(height: getPropertionateScreenHeight(15),),
                  FormProfile(judul: 'Nomor Hp', form: '081351482914'),
                  SizedBox(height: getPropertionateScreenHeight(15),),
                  FormProfile(judul: 'Usia', form: '21 Tahun'),
                  SizedBox(height: getPropertionateScreenHeight(15),),
                  FormProfile(judul: 'Jenis Kelamin', form: 'Pria'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
