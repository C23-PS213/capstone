import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/modules/widgets/produkcontent.dart';
import 'package:jerawat/constants/constants.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/app/modules/home/components/search.dart';
import 'package:jerawat/app/modules/widgets/appbar.dart';


import '../../../routes/app_pages.dart';
import '../controllers/produk_controller.dart';

class ProdukView extends GetView<ProdukController> {
  const ProdukView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: getPropertionateScreenHeight(38),),
                Container(
                  child: NamaApp(judul: 'Produk', onTap: (){
                    Get.toNamed(Routes.HOME);
                  },),
                ),
                SizedBox(height: getPropertionateScreenHeight(30),),
                Container(
                  child: Search(),
                ),
                SizedBox(height: getPropertionateScreenHeight(30),),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: getPropertionateScreenWidht(19),),
                      Container(
                        width: getPropertionateScreenWidht(100),
                        height: getPropertionateScreenHeight(50),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kButtonColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                          ),
                          onPressed: (){},
                          child: Text(
                            'Toner',
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: getPropertionateScreenWidht(10),),
                      Container(
                        width: getPropertionateScreenWidht(100),
                        height: getPropertionateScreenHeight(50),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kButtonColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                          ),
                          onPressed: (){},
                          child: Text(
                            'Krim',
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: getPropertionateScreenWidht(10),),
                      Container(
                        width: getPropertionateScreenWidht(100),
                        height: getPropertionateScreenHeight(50),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kButtonColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                          ),
                          onPressed: (){},
                          child: Text(
                            'Masker',
                            style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getPropertionateScreenHeight(30),),
                Column(
                  children: [
                    SizedBox(height: getPropertionateScreenHeight(10),),
                    ProdukContent(gambar: 'assets/images/1.jpg', judul: 'SK-II', subtitle: 'Hahha bela', onTap: (){
                      Get.toNamed(Routes.ISIPRODUK);
                    }),
                    SizedBox(height: getPropertionateScreenHeight(10),),
                    ProdukContent(gambar: 'assets/images/2.jpg', judul: 'SK-II', subtitle: 'Hahha bela merupakan sebuah pridako fjoigeesf', onTap: (){
                      Get.toNamed(Routes.ISIPRODUK);
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
