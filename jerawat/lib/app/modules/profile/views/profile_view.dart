import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/modules/widgets/listmenu.dart';
import 'package:jerawat/constants/constants.dart';
import 'package:jerawat/app/config/size_config.dart';
import '../../../routes/app_pages.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: getPropertionateScreenHeight(83),),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 24),
                  width: getPropertionateScreenWidht(80),
                  height: getPropertionateScreenHeight(80),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Color(0xFFD9D9D9),
                  ),
                ),
                SizedBox(width: getPropertionateScreenWidht(23),),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: getPropertionateScreenWidht(200),
                        child: Text(
                          'Ahmad Jayadi',
                          textAlign: TextAlign.left,
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: getPropertionateScreenWidht(200),
                        child: Text(
                          '21 Tahun',
                          textAlign: TextAlign.left,
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: light,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: getPropertionateScreenHeight(43),),
            Container(
              width: getPropertionateScreenWidht(321),
              height: getPropertionateScreenHeight(480),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kContentColor2,
              ),
              child: Column(
                children: [
                  SizedBox(height: getPropertionateScreenHeight(20),),
                  ListMenu(judul: 'Informasi Pribadi', warna: kContentColor1, onTap: (){
                    Get.toNamed(Routes.INFORMASIPRIBADI);
                  }),
                  SizedBox(height: getPropertionateScreenHeight(15),),
                  ListMenu(judul: 'Edit Profile', warna: kContentColor1, onTap: (){
                    Get.toNamed(Routes.EDITPROFILE);
                  }),
                  SizedBox(height: getPropertionateScreenHeight(15),),
                  ListMenu(judul: 'Pengaturan', warna: kContentColor1, onTap: (){
                    Get.toNamed(Routes.PENGATURAN);
                  }),
                  SizedBox(height: getPropertionateScreenHeight(15),),
                  ListMenu(judul: 'Tentang Aplikasi', warna: kContentColor1, onTap: (){

                  }),
                  SizedBox(height: getPropertionateScreenHeight(160),),
                  InkWell(
                    onTap: (){
                      Get.toNamed(Routes.LOGIN);
                    },
                    child: Container(
                      width: getPropertionateScreenWidht(280),
                      height: getPropertionateScreenHeight(45),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kContentColor1,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: getPropertionateScreenWidht(25),),
                          Container(
                            width: getPropertionateScreenWidht(180),
                            height: getPropertionateScreenHeight(21),
                            child: Text(
                              'Keluar',
                              textAlign: TextAlign.left,
                              style: primaryTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                          SizedBox(width: getPropertionateScreenWidht(37),),
                          Container(
                            child: Icon(
                              Icons.logout,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
