import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/app/modules/widgets/buttonloginreglup.dart';
import 'package:jerawat/app/modules/widgets/formloginreglup.dart';
import 'package:jerawat/constants/constants.dart';

import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    //menggunakan controller register agar data tersimpan di firestore
    final RegisterController controller = Get.put(RegisterController());
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
                  'Registrasi',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              SizedBox(height: getPropertionateScreenHeight(60),),
              FormLoginRegLup(
                judul: 'Email',
                form: 'masukkan email',
                kontrol: controller.emailC,
              ),
              SizedBox(height: getPropertionateScreenHeight(14),),
              FormLoginRegLup(
                judul: 'Nomor HP',
                form: 'masukkan nomor hp',
                kontrol: controller.phoneC,
              ),
              SizedBox(height: getPropertionateScreenHeight(14),),
              FormLoginRegLup(
                judul: 'Password',
                form: 'masukkan password',
                kontrol: controller.passwordC,
              ),
              SizedBox(height: getPropertionateScreenHeight(14),),
              FormLoginRegLup(
                judul: 'Nama Lengkap',
                form: 'masukkan Nama Lengkap',
                kontrol: controller.namaLengkapC,
              ),
              SizedBox(height: getPropertionateScreenHeight(14),),
              FormLoginRegLup(
                judul: 'Nama Panggilan',
                form: 'masukkan nama panggilan',
                kontrol: controller.namaPanggilanC,
              ),
              SizedBox(height: getPropertionateScreenHeight(14),),
              FormLoginRegLup(
                judul: 'Usia',
                form: 'masukkan usia',
                kontrol: controller.usiaC,
              ),
              SizedBox(height: getPropertionateScreenHeight(14),),
              SizedBox(height: getPropertionateScreenHeight(50),),
              ButtonLoginRegLup(
                judul: "MASUK",
                onTap: () {
                  controller.addData();
                  //Get.toNamed(Routes.DATADIRI1);
                }, ),
              SizedBox(height: getPropertionateScreenHeight(5),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sudah punya akun',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                    child: Text(
                      'Masuk Disini',
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