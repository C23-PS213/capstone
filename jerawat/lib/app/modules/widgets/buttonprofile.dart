import 'package:flutter/cupertino.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/constants/constants.dart';
import 'package:flutter/material.dart';

class ButtonProfile extends StatelessWidget {
  final String judul;
  final GestureTapCallback onTap;

  const ButtonProfile({
    Key? key,
    required this.judul,
    required this.onTap,
  }) : super (key: key) ;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Container(
        width: getPropertionateScreenWidht(160),
        height: getPropertionateScreenHeight(50),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kButtonColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          onPressed: onTap,
          child: Text(
            judul,
            style: primaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: bold,
            ),
          ),
        ),
      ),
    );
  }
}
