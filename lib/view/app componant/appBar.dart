import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utality/app_colors.dart';

Widget appBar({
  required String title,
  required VoidCallback onPress
})=> AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: AppColors.backgroundColor,
    leading: IconButton(onPressed: onPress,icon: Icon(Icons.keyboard_double_arrow_left_sharp,color: AppColors.appGreyText,size: 20.sp,),),
    title: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp,color: AppColors.appGreyText),)
);