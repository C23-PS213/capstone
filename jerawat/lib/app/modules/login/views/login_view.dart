import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/app/modules/widgets/buttonloginreglup.dart';
import 'package:jerawat/app/modules/widgets/formloginreglup.dart';
import 'package:jerawat/constants/constants.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                    "Login",
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              SizedBox(height: getPropertionateScreenHeight(60),),
              FormLoginRegLup(judul: 'Email', form: 'Masukkan Email',kontrol: controller.emailC,),
              SizedBox(height: getPropertionateScreenHeight(14),),
              FormLoginRegLup(judul: 'Password', form: 'Masukkan Password',kontrol: controller.passwordC,),
              SizedBox(height: getPropertionateScreenHeight(14),),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.LUPAPASSWORD);
                  },
                  child: Text(
                    'Lupa Kata Sandi ?',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light
                    ),
                  ),
                ),
              ),
              SizedBox(height: getPropertionateScreenHeight(50),),
              ButtonLoginRegLup(
                judul: "LOGIN",
                onTap: () {
                  controller.loginUser();
                  //Get.toNamed(Routes.HOME);
                },
              ),
              SizedBox(height: getPropertionateScreenHeight(5),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Belum Punya Akun ?',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.REGISTER);
                      },
                      child: Text(
                        'Daftar Disini',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold,
                        ),
                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


