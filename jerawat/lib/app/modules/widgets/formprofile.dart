import 'package:flutter/cupertino.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/constants/constants.dart';
import 'package:flutter/material.dart';

class FormProfile extends StatelessWidget {
  final String judul;
  final String form;

  const FormProfile({
    Key? key,
    required this.judul,
    required this.form,
}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Container(
        width: getPropertionateScreenWidht(280),
        child: Column(
          children: [
            Container(
              width: getPropertionateScreenWidht(280),
              child: Text(
                judul,
                textAlign: TextAlign.left,
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),
              ),
            ),
            SizedBox(height: getPropertionateScreenHeight(5),),
            Container(
              width: getPropertionateScreenWidht(280),
              height: getPropertionateScreenHeight(45),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kContentColor1,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: getPropertionateScreenWidht(250),
                  child: Text(
                    form,
                    textAlign: TextAlign.left,
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
