import 'package:flutter/cupertino.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/constants/constants.dart';
import 'package:flutter/material.dart';

class FormInputProfile extends StatelessWidget {
  final String judul;
  final String form;
  final TextEditingController? textEditingController;

  const FormInputProfile({
    Key? key,
    required this.judul,
    required this.form, this.textEditingController,
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
              child: TextField(
                decoration: InputDecoration(
                  hintText: form,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintStyle: secondaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: kContentColor1,
                  filled: true,
                ),
                controller: textEditingController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
