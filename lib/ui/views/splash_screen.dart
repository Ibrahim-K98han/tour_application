import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tour_application/const/app_strings.dart';
import 'package:tour_application/ui/views/onbording_screen.dart';

import '../styles/styles.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () => Get.to(OnbordingScreen()));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo/app-logo.png',
                height: 200.h,
              ),
              Text(
                AppStrings.appName,
                style: AppStyles().myTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
