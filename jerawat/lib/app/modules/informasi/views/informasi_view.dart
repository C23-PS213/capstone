import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/modules/widgets/appbar.dart';
import 'package:jerawat/app/modules/widgets/listmenu.dart';
import 'package:jerawat/constants/constants.dart';
import 'package:jerawat/app/config/size_config.dart';
import '../../../routes/app_pages.dart';
import '../controllers/informasi_controller.dart';

class InformasiView extends GetView<InformasiController> {
  const InformasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: getPropertionateScreenHeight(38),),
              Container(
                child: NamaApp(judul: 'Informasi', onTap: (){
                  Get.toNamed(Routes.HOME);
                }),
              ),
              SizedBox(height: getPropertionateScreenHeight(64),),
              Container(
                width: getPropertionateScreenWidht(321),
                height: getPropertionateScreenHeight(480),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kContentColor1,
                ),
                child: Column(
                  children: [
                    SizedBox(height: getPropertionateScreenHeight(37),),
                    ListMenu(judul: 'Pengertian Jerawat', warna: kBackgroundColor, onTap: (){}),
                    SizedBox(height: getPropertionateScreenHeight(15),),
                    ListMenu(judul: 'Jenis-Jenis Jerawat', warna: kBackgroundColor, onTap: (){}),
                    SizedBox(height: getPropertionateScreenHeight(15),),
                    ListMenu(judul: 'Penanganan Jerawat', warna: kBackgroundColor, onTap: (){}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
