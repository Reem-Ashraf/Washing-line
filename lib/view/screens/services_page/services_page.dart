import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wishingline/view/app%20componant/appBar.dart';

import '../../../utality/app_colors.dart';
import '../../../utality/image_path.dart';
import 'componant/componant.dart';

class ServisesPage extends StatelessWidget {
  const ServisesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: AppColors.backgroundColor,
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
            "Services",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
                color: AppColors.appGreyText),
          )),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            rowServiceScreen(
                image1: AppImages.laundry,
                image2: AppImages.clothesImage,
                text1: 'Presser',
                text2: 'Fold',
                padding: 0),
            rowServiceScreen(
                image1: AppImages.washingMachine,
                image2: AppImages.cleaning,
                text1: 'Washing',
                text2: 'Cleaning',
                padding: 20),
            rowServiceScreen(
                image1: AppImages.dry,
                image2: AppImages.dryAndWash,
                text1: 'Drying',
                text2: 'Wash and dry',
                padding: 20),
            rowServiceScreen(
                image1: AppImages.swingMachine,
                image2: AppImages.cutting,
                text1: 'Swing',
                text2: 'Cutting',
                padding: 30),
          ],
        ),
      ),
    );
  }
}
