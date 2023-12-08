import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../../../../utality/app_colors.dart';

Widget rowServiceScreen(
        {required String image1,
        required String image2,
        required String text1,
        required String text2,
        required double padding}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.only(top: padding),
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
        Container(
          padding: const EdgeInsets.only(top: 25),
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
      ],
    );
