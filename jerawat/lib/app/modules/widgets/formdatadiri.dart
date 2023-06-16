import 'package:flutter/cupertino.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/constants/constants.dart';
import 'package:flutter/material.dart';

class FormDataDiri extends StatelessWidget {
  final String form;
  final TextEditingController kontrol;
  
  const FormDataDiri({
    Key? key,
    required this.form,
    required this.kontrol,
}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Container(
        width: getPropertionateScreenWidht(293),
        height: getPropertionateScreenHeight(50),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFC0C0C0),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: kontrol,
          decoration: InputDecoration(
            hintText: form,
            contentPadding: EdgeInsets.only(left: 10),
            hintStyle: secondaryTextStyle.copyWith(
              fontSize: 14,
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
    );
  }
}
