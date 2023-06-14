import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/app/modules/home/components/card_menu.dart';
import 'package:jerawat/app/modules/home/components/search.dart';
import 'package:jerawat/app/modules/widgets/cart-konten.dart';
import 'package:jerawat/constants/constants.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: getPropertionateScreenHeight(74),),
                Row(
                  children: [
                    SizedBox(width: getPropertionateScreenWidht(19),),
                    Text(
                      'Halo, Ahmad',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getPropertionateScreenHeight(30),),
                Container(
                  child: Search(),
                ),
                SizedBox(height: getPropertionateScreenHeight(48),),
                Text(
                  'Beranda',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(height: getPropertionateScreenHeight(9),),
                Container(
                  width: getPropertionateScreenWidht(321),
                  height: getPropertionateScreenHeight(185),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFE4E4E4),
                  ),
                ),
                SizedBox(height: getPropertionateScreenHeight(55),),
                Row(
                  children: [
                    SizedBox(width: getPropertionateScreenWidht(20),),
                    CardMenu(judul: 'Klinik terdekat', gambar: 'assets/images/home/health_clinic.png', onTap: (){},),
                    SizedBox(width: getPropertionateScreenWidht(10),),
                    CardMenu(judul: 'Produk', gambar: 'assets/images/home/products.png', onTap: (){
                      Get.toNamed(Routes.PRODUK);
                    },),
                    SizedBox(width: getPropertionateScreenWidht(10),),
                    CardMenu(judul: 'Informasi', gambar: 'assets/images/home/information.png', onTap: (){
                      Get.toNamed(Routes.INFORMASI);
                    },),
                  ],
                ),
                SizedBox(height: getPropertionateScreenHeight(19),),
                Row(
                  children: [
                    SizedBox(width: getPropertionateScreenWidht(20),),
                    CardMenu(judul: 'Klinik terdekat', gambar: 'assets/images/logoi.png', onTap: (){},),
                    SizedBox(width: getPropertionateScreenWidht(10),),
                    //ROUTE SEMENTARA !!!
                    CardMenu(judul: 'Scan Wajah', gambar: 'assets/images/logoi.png', onTap: (){
                      Get.toNamed(Routes.SCANWAJAH1);
                    },),
                    SizedBox(width: getPropertionateScreenWidht(10),),
                    //ROUTE SEMENTARA !!!
                    CardMenu(judul: 'Profile', gambar: 'assets/images/logoi.png', onTap: (){
                      Get.toNamed(Routes.PROFILE);
                    },),
                  ],
                ),
                SizedBox(height: getPropertionateScreenHeight(10),),
                CartIklan(title: 'Garnier men', subtitle: 'dengan adanywfwfwfwfwfwfwfjefjefjejfkejfkejfkjekfjekfjekfjekfjejfkefjkefjekjfkejfkejfwfwfwfwfwfwfwfwfw', img: 'assets/images/1.jpg', onTap: (){},),
                SizedBox(height: getPropertionateScreenHeight(20),),
                CartIklan(title: 'Garnier men', subtitle: 'dengan adanywfwfwfwfwfwfwfjefjefjejfkejfkejfkjekfjekfjekfjekfjejfkefjkefjekjfkejfkejfwfwfwfwfwfwfwfwfw', img: 'assets/images/2.jpg', onTap: (){},),
                SizedBox(height: getPropertionateScreenHeight(20),),
                CartIklan(title: 'ponds', subtitle: 'ponds', img: 'assets/images/logoi.png', onTap: (){},),
                SizedBox(height: getPropertionateScreenHeight(20),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
