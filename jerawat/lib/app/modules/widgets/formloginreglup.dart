import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/constants/constants.dart';
import 'package:flutter/material.dart';

import '../register/controllers/register_controller.dart';



class FormLoginRegLup extends StatelessWidget {
  final String judul;
  final String form;
  final TextEditingController kontrol;

  const FormLoginRegLup({
    Key? key,
    required this.judul,
    required this.form,
    required this.kontrol,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              judul,
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
              ),
            ),
          ),
          SizedBox(height: getPropertionateScreenHeight(5),),
          Container(
            width: getPropertionateScreenWidht(293),
            height: getPropertionateScreenHeight(33),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFC0C0C0),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              obscureText: judul == 'Password',
              controller: kontrol,
              decoration: InputDecoration(
                hintText: form,
                contentPadding: EdgeInsets.only(left: 10),
                hintStyle: secondaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                fillColor: kFillColor,
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}