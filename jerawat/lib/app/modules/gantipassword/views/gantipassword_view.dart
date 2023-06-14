import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/app/modules/widgets/appbar.dart';
import 'package:jerawat/app/modules/widgets/buttonprofile.dart';
import 'package:jerawat/app/modules/widgets/forminputprofile.dart';
import 'package:jerawat/constants/constants.dart';

import '../../../routes/app_pages.dart';
import '../controllers/gantipassword_controller.dart';

class GantipasswordView extends GetView<GantipasswordController> {
  const GantipasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: getPropertionateScreenHeight(38),),
              Container(
                child: NamaApp(judul: 'Ganti Password', onTap: (){
                  Get.toNamed(Routes.PENGATURAN);
                }),
              ),
              SizedBox(height: getPropertionateScreenHeight(58),),
              Container(
                width: getPropertionateScreenWidht(321),
                height: getPropertionateScreenHeight(400),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kContentColor2,
                ),
                child: Column(
                  children: [
                    SizedBox(height: getPropertionateScreenHeight(40),),
                    FormInputProfile(judul: 'Kata Sandi Lama', form: 'Masukkan kata sandi lama'),
                    SizedBox(height: getPropertionateScreenHeight(15),),
                    FormInputProfile(judul: 'Kata Sandi Baru', form: 'Masukkan kata sandi baru'),
                    SizedBox(height: getPropertionateScreenHeight(15),),
                    FormInputProfile(judul: 'Ulangi Kata Sandi', form: 'ulangi kata sandi'),
                  ],
                ),
              ),
              SizedBox(height: getPropertionateScreenHeight(80),),
              Container(
                child: ButtonProfile(judul: 'Simpan', onTap: (){}),
              ),
              SizedBox(height: getPropertionateScreenHeight(160),),
            ],
          ),
        ),
      ),
    );
  }
}
