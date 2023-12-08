import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utality/app_colors.dart';

Widget AppButton({
  required double width,
  required double height,
  required double border,
  required String text,
  required VoidCallback onPressed,
})=>Container(
  width: width,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(border),
      color:AppColors.orange
  ),
  child: MaterialButton(
    height: height,
    onPressed:onPressed,
    child: Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
          color:AppColors.white),
    ),
  ),
);