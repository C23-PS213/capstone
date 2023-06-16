import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/app/modules/widgets/buttondatadiriback.dart';
import 'package:jerawat/app/modules/widgets/formdatadiri.dart';
import 'package:jerawat/constants/constants.dart';
import '../../../routes/app_pages.dart';
import '../controllers/datadiri4_controller.dart';

class Datadiri4View extends GetView<Datadiri4Controller> {
  const Datadiri4View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Datadiri4Controller controller = Get.put(Datadiri4Controller());
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        margin: EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getPropertionateScreenHeight(89),),
              Center(
                child: Text(
                  'Usia Anda',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              SizedBox(height: getPropertionateScreenHeight(45),),
              FormDataDiri(form: 'Masukkan usia anda', kontrol: controller.usiaC,),
              SizedBox(height: getPropertionateScreenHeight(445),),
              ButtonDataDiriBack(
                judul: 'Lanjut',
                back: (){
                  Get.toNamed(Routes.DATADIRI2);
                },
                onTap: (){
                  controller.addData();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
