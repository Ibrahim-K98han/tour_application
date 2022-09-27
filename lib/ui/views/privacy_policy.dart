import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tour_application/ui/widgets/violateBtn.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10.h,),
              ViolatBtn('Agree', (){}),
              SizedBox(height: 10.h,),
            ],
          ),
        ),
      ),
    );
  }
}
