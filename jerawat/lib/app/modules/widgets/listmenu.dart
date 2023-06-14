import 'package:flutter/cupertino.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/constants/constants.dart';
import 'package:flutter/material.dart';


class ListMenu extends StatelessWidget {
  final String judul;
  final Color warna;
  final GestureTapCallback onTap;

  const ListMenu({
    Key? key,
    required this.judul,
    required this.warna,
    required this.onTap,
}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: getPropertionateScreenWidht(280),
          height: getPropertionateScreenHeight(45),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: warna,
          ),
          child: Row(
            children: [
              SizedBox(width: getPropertionateScreenWidht(25),),
              Container(
                width: getPropertionateScreenWidht(180),
                height: getPropertionateScreenHeight(21),
                child: Text(
                  judul,
                  textAlign: TextAlign.left,
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              SizedBox(width: getPropertionateScreenWidht(37),),
             Container(
               child: Icon(
                 Icons.arrow_forward_ios,
                 size: 20,
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
