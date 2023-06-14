import 'package:flutter/cupertino.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/constants/constants.dart';
import 'package:flutter/material.dart';

class ProdukContent extends StatelessWidget {
  final String gambar;
  final String judul;
  final String subtitle;
  final GestureTapCallback onTap;

  const ProdukContent({
  Key? key,
  required this.gambar,
  required this.judul,
  required this.subtitle,
  required this.onTap,
}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getPropertionateScreenWidht(321),
        height: getPropertionateScreenHeight(110),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kContentColor1,
        ),
        child: Row(
          children: [
            SizedBox(width: getPropertionateScreenWidht(15),),
            Image(
                image: AssetImage(gambar),
                width: getPropertionateScreenWidht(80),
                height: getPropertionateScreenHeight(80),
            ),
            SizedBox(width: getPropertionateScreenWidht(10),),
            Container(
              width: getPropertionateScreenWidht(171),
              child: Column(
                children: [
                  SizedBox(
                    height: getPropertionateScreenHeight(21),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      judul,
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getPropertionateScreenWidht(10),
                    height: getPropertionateScreenHeight(5),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 171,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        subtitle,
                        textAlign: TextAlign.left,
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 2,
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
