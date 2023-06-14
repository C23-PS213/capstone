import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/constants/constants.dart';

class CartIklan extends StatelessWidget {
  final String title;
  final String subtitle;
  final String img;
  final GestureTapCallback onTap;
  const CartIklan({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.img,
    required this.onTap,
}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: getPropertionateScreenHeight(130),
        width: getPropertionateScreenWidht(321),
        padding: EdgeInsets.all(8),
        color: kContentColor1,
        child: Row(
          children: [
            Image(
              image: AssetImage(img),
              width: getPropertionateScreenWidht(100),
              height: getPropertionateScreenHeight(100),
            ),
            SizedBox(width: getPropertionateScreenWidht(10),),
            Expanded (
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getPropertionateScreenWidht(21),
                  height: getPropertionateScreenHeight(21),),
                  Text(
                    title,
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: getPropertionateScreenHeight(5),),
                  Text(
                    subtitle,
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 12,

                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,

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
