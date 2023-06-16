import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/app/modules/widgets/buttonloginreglup.dart';
import 'package:jerawat/app/modules/widgets/formloginreglup.dart';
import 'package:jerawat/app/routes/app_pages.dart';
import 'package:jerawat/constants/constants.dart';

import '../controllers/lupapassword_controller.dart';

class LupapasswordView extends GetView<LupapasswordController> {
  const LupapasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        margin: EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getPropertionateScreenHeight(65),),
              Center(
                child: Text(
                  "Lupa Password",
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              SizedBox(height: getPropertionateScreenHeight(60),),
              //FormLoginRegLup(judul: 'Email', form: 'masukkan email',),
              SizedBox(height: getPropertionateScreenHeight(50),),
              ButtonLoginRegLup(
                  judul: 'KIRIM',
                  onTap: () {
                    Get.toNamed(Routes.LOGIN);
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
