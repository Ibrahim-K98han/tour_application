import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tour_application/const/app_colors.dart';

class ViolatBtn extends StatelessWidget {
  String title;
  final Function onAction;

  ViolatBtn(this.title, this.onAction);

  RxBool _value = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => InkWell(
          onTap: () {
            _value.value = true;
            onAction();
          },
          child: Container(
              height: 45.h,
              decoration: BoxDecoration(
                  color: AppColors.violetColor,
                  borderRadius: BorderRadius.all(Radius.circular(5.r))),
              child: _value == false
                  ? Center(
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Please Waite...',
                          style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Transform.scale(
                            scale: 0.4,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ))
                      ],
                    )),
        ));
  }
}
