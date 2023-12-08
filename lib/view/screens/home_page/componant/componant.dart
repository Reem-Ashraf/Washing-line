import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../../../../utality/app_colors.dart';
import '../../../../utality/image_path.dart';

Widget homePageComponant({
  required String txt,
  required String image,

})=> Container(
  padding: const EdgeInsets.only(top: 25),
  decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            offset: const Offset(
              2,
              2,
            ),
            color: AppColors.grey, spreadRadius: 0, blurRadius: 3),
      ],
      color: AppColors.white,
      borderRadius: BorderRadius.circular(10)
  ),
  height: 17.h,
  width: 27.w,
  child: Column(
    children: [
      Image(image: AssetImage(image)),
      Text(txt,style: TextStyle(color: AppColors.grey,fontWeight: FontWeight.bold),)
    ],
  ),
);