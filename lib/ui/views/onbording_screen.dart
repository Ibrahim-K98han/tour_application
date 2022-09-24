import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tour_application/ui/views/auth/sign_up.dart';

import '../../const/app_colors.dart';
import '../styles/styles.dart';

class OnbordingScreen extends StatelessWidget {
  List<String> _lottieFiles = [
    'assets/files/welcome.json',
    'assets/files/categories.json',
    'assets/files/support.json'
  ];
  List<String> _title = ['Welcome', 'Categories', 'Support'];
  List<String> _description = [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s'
  ];

  RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(32.w),
          child: Column(
            children: [
              Obx(
                () => Expanded(
                  flex: 2,
                  child: Lottie.asset(_lottieFiles[_currentIndex.toInt()]),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.scaffoldColors,
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 10,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 5,
                              spreadRadius: 1.0),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(30.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => Text('${_title[_currentIndex.toInt()]}',
                                style: AppStyles().myTextStyle),
                          ),
                          Obx(() => Text('${_description[_currentIndex.toInt()]}'),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Obx(() =>  DotsIndicator(
                               dotsCount: _lottieFiles.length,
                               position: _currentIndex.toDouble(),
                               decorator: DotsDecorator(color: Colors.grey),
                             ),),
                              InkWell(
                                onTap: () {
                                  if(_currentIndex == 2){
                                   Get.to(SignUp());
                                  }else{
                                    _currentIndex++;
                                  }
                                },
                                child: Container(
                                  height: 37.h,
                                  width: 37.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.scaffoldColors,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(4.0, 4.0),
                                          blurRadius: 10,
                                          spreadRadius: 1.0),
                                      BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-4.0, -4.0),
                                          blurRadius: 5,
                                          spreadRadius: 1.0),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.double_arrow,
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
