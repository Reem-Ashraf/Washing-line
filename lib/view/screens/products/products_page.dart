import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wishingline/view/screens/products/carpet_page/carpet_page.dart';

import '../../../utality/app_colors.dart';
import '../../../utality/image_path.dart';
import 'componant/product_componant.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

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
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            productComponent(
                image1: AppImages.napkinImage,
                image2: AppImages.carpetImage2,
                text1: 'Napkin',
                text2: 'Carpet',
                padding: 0,
                onTap1: () {},
                onTap2: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contet) => CarpetPage()));
                }),
            SizedBox(
              height: 3.h,
            ),
            productComponent(
                image1: AppImages.officeChair,
                image2: AppImages.clothesHanger,
                text1: 'Office Chair',
                text2: 'Clothes',
                padding: 20,
                onTap1: () {},
                onTap2: () {}),
            SizedBox(
              height: 3.h,
            ),
            productComponent(
                image1: AppImages.sofaImage,
                image2: AppImages.windowImage,
                text1: 'Sofa',
                text2: 'curtains',
                padding: 20,
                onTap1: () {},
                onTap2: () {}),
          ],
        ),
      ),
    );
  }
}
