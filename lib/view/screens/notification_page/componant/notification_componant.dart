import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../utality/app_colors.dart';
import '../../../../utality/image_path.dart';

Widget NotificationIteam(
        {required String image, required Color circleAvatarBackGround}) =>
    Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: const Offset(
                    2,
                    2,
                  ),
                  color: AppColors.grey,
                  spreadRadius: 0,
                  blurRadius: 3),
            ],
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(10)),
        height: 13.h,
        width: double.infinity,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: circleAvatarBackGround,
                    child: Image(image: AssetImage(image))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your order has confirmed",
                    style:
                        TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "We will contact you once your order\n arrives",
                    style: TextStyle(
                      fontSize: 10.sp,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child:
                    Text("9nov", style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ]),
          ],
        ));
