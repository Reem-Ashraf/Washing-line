import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../utality/app_colors.dart';
import '../../../../utality/image_path.dart';

Widget PaidMethod({
  required VoidCallback onTap,
  required Widget widget
})=>InkWell(
  onTap: onTap,
  child: Container(
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
            offset: const Offset(
              .5,
              .5,
            ),
            color: AppColors.grey, spreadRadius: 0, blurRadius: 2),
      ],
    ),
    height: 5.5.h,
    width: 15.w,
    child: Center(child: widget),),
);