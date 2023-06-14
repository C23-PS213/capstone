import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/app/modules/widgets/appbar.dart';
import 'package:jerawat/app/modules/widgets/buttonprofile.dart';
import 'package:jerawat/app/modules/widgets/forminputprofile.dart';
import 'package:jerawat/constants/constants.dart';
import '../../../routes/app_pages.dart';

import '../controllers/editprofile_controller.dart';

class EditprofileView extends GetView<EditprofileController> {
  const EditprofileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: getPropertionateScreenHeight(28),),
                Container(
                  child: NamaApp(judul: 'Edit Profile', onTap: (){
                    Get.toNamed(Routes.PROFILE);
                  }),
                ),
                SizedBox(height: getPropertionateScreenHeight(31),),
                Container(
                  width: getPropertionateScreenWidht(100),
                  height: getPropertionateScreenHeight(100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xFFD9D9D9),
                  ),
                ),
                SizedBox(height: getPropertionateScreenHeight(42),),
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
                      FormInputProfile(judul: 'Nama Lengkap', form: 'Masukkan nama anda', textEditingController: controller.namaC, ),
                      SizedBox(height: getPropertionateScreenHeight(15),),
                      FormInputProfile(judul: 'Nama Panggilan', form: 'Masukkan nama panggilan anda', textEditingController: controller.namaPanggilanC,),
                      SizedBox(height: getPropertionateScreenHeight(15),),
                      FormInputProfile(judul: 'Nomor Hp', form: '081351482914'),
                      SizedBox(height: getPropertionateScreenHeight(15),),
                      FormInputProfile(judul: 'Usia', form: '21 Tahun'),
                      SizedBox(height: getPropertionateScreenHeight(15),),
                      FormInputProfile(judul: 'Jenis Kelamin', form: 'Pria'),
                    ],
                  ),
                ),
                SizedBox(height: getPropertionateScreenHeight(40),),
                Container(
                  child: ButtonProfile(judul: 'Simpan', onTap: (){
                    Get.toNamed(Routes.INFORMASIPRIBADI);
                  }),
                ),
                SizedBox(height: getPropertionateScreenHeight(50),),
              ],
            ),
          ),
      ),
    );
  }
}
