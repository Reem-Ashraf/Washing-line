import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wishingline/utality/image_path.dart';

import '../../../utality/app_colors.dart';
import 'componant/notification_componant.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_double_arrow_left_sharp,
            color: AppColors.appGreyText,
            size: 20.sp,
          ),
        ),
        title: Text(
          "Notification",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
              color: AppColors.appGreyText),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NotificationIteam(
                  image: AppImages.deliveryBox1,
                  circleAvatarBackGround: AppColors.lemonColor),
              SizedBox(
                height: 2.h,
              ),
              NotificationIteam(
                  image: AppImages.shipping,
                  circleAvatarBackGround: AppColors.binkyRedColor),
              SizedBox(
                height: 2.h,
              ),
              NotificationIteam(
                  image: AppImages.timeLeft,
                  circleAvatarBackGround: AppColors.binkyOrangeColor),
              SizedBox(
                height: 2.h,
              ),
              NotificationIteam(
                  image: AppImages.delivery2,
                  circleAvatarBackGround: AppColors.babyBlueColor),
              SizedBox(
                height: 2.h,
              ),
              NotificationIteam(
                  image: AppImages.deliveryBox1,
                  circleAvatarBackGround: AppColors.lemonColor),
              SizedBox(
                height: 2.h,
              ),
              NotificationIteam(
                  image: AppImages.shipping,
                  circleAvatarBackGround: AppColors.binkyRedColor),
              SizedBox(
                height: 2.h,
              ),
              NotificationIteam(
                  image: AppImages.timeLeft,
                  circleAvatarBackGround: AppColors.binkyOrangeColor),
              SizedBox(
                height: 2.h,
              ),
              NotificationIteam(
                  image: AppImages.delivery2,
                  circleAvatarBackGround: AppColors.babyBlueColor),
            ],
          ),
        ),
      ),
    );
  }
}
