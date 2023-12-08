import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../utality/app_colors.dart';

Widget productComponent({
  required String image1,
  required String image2,
  required String text1,
  required String text2,
  required double padding,
  required VoidCallback onTap1,
  required VoidCallback onTap2,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: onTap1,
          child: Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: const Offset(
                    2,
                    2,
                  ),
                  color: AppColors.grey,
                  spreadRadius: 0,
                  blurRadius: 3),
            ], color: AppColors.white, borderRadius: BorderRadius.circular(10)),
            height: 17.h,
            width: 35.w,
            child: Column(
              children: [
                Image(image: AssetImage(image1)),
                Text(
                  text1,
                  style: TextStyle(
                      color: AppColors.grey, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: onTap2,
          child: Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: const Offset(
                    2,
                    2,
                  ),
                  color: AppColors.grey,
                  spreadRadius: 0,
                  blurRadius: 3),
            ], color: AppColors.white, borderRadius: BorderRadius.circular(10)),
            height: 17.h,
            width: 35.w,
            child: Column(
              children: [
                Image(image: AssetImage(image2)),
                Text(
                  text2,
                  style: TextStyle(
                      color: AppColors.grey, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
