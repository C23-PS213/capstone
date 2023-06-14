import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/constants/constants.dart';
import 'package:flutter/material.dart';


class NamaApp extends StatelessWidget {
  final String judul;
  final GestureTapCallback onTap;
  const NamaApp({
    Key? key,
    required this.judul,
    required this.onTap,
}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: getPropertionateScreenHeight(38),),
            Row(
              children: [
                SizedBox(width: getPropertionateScreenWidht(58),),
                Container(
                  child: InkWell(
                    onTap: onTap,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(width: getPropertionateScreenWidht(30),),
                Center(
                  child: Container(
                    width: getPropertionateScreenWidht(157),
                    height: getPropertionateScreenHeight(27),
                    child: Text(
                      judul,
                      textAlign: TextAlign.center,
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
