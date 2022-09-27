import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  TextStyle myTextStyle =
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600);
  InputDecoration textFieldDecoration(String hint) => InputDecoration(
      hintText: hint, hintStyle: TextStyle(fontSize: 15.sp));
}
