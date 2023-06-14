import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jerawat/app/config/size_config.dart';

import '../../../../constants/constants.dart';

class CardMenu extends StatelessWidget {
  final String judul;
  final String gambar;
  final GestureTapCallback onTap;

  const CardMenu({
    Key? key,
    required this.judul,
    required this.gambar,
    required this.onTap
}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: getPropertionateScreenHeight(100),
            width: getPropertionateScreenWidht(100),
            decoration: BoxDecoration(
              color: kContentColor1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Container(
                height: getPropertionateScreenHeight(50),
                width: getPropertionateScreenWidht(50),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(gambar),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Text(
            judul,
            style: primaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }
}
