import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splashscreen_controller.dart';


class SplashscreenView extends StatefulWidget {
  const SplashscreenView({Key? key});

  @override
  _SplashscreenViewState createState() => _SplashscreenViewState();
}

class _SplashscreenViewState extends State<SplashscreenView> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(Routes.LOGIN); // Ganti 'LOGIN' dengan rute halaman berikutnya
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8EDEB),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/acne.png",
                width: Get.width * 0.75,
                height: Get.height * 0.75,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
