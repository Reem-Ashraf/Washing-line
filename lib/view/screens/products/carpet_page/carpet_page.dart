import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wishingline/view/app%20componant/app_button.dart';
import 'package:wishingline/view/screens/products/carpet_page/componant/componant.dart';

import '../../../../utality/app_colors.dart';
import '../../../../utality/image_path.dart';

class CarpetPage extends StatefulWidget {
  const CarpetPage({super.key});

  @override
  State<CarpetPage> createState() => _CarpetPageState();
}

class _CarpetPageState extends State<CarpetPage> {
  //const CarpetPage({Key? key}) : super(key: key);
  int count = 0;

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
          "Carpet",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
              color: AppColors.appGreyText),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: AppColors.appGreyText,
                ),
                CircleAvatar(
                  maxRadius: 6,
                  backgroundColor: AppColors.red,
                  child: Text(
                    "3",
                    style: TextStyle(color: AppColors.white, fontSize: 7.sp),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 42.w,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            AppImages.carpetImage,
                          ),
                          height: 8.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Carpet',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: AppColors.appGreyText,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '15 R.s',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: AppColors.orange,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7.h,
                        )
                      ],
                    ),
                  ),
                  carpetPage(
                      addOnPress: () {
                        setState(() {
                          count++;
                        });
                      },
                      minusOnPress: () {
                        setState(() {
                          count--;
                        });
                      },
                      txt: "$count")
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  carpetPage(
                      addOnPress: () {
                        setState(() {
                          count++;
                        });
                      },
                      minusOnPress: () {
                        setState(() {
                          count--;
                        });
                      },
                      txt: "$count"),
                  carpetPage(
                      addOnPress: () {
                        setState(() {
                          count++;
                        });
                      },
                      minusOnPress: () {
                        setState(() {
                          count--;
                        });
                      },
                      txt: "$count")
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  carpetPage(
                      addOnPress: () {
                        setState(() {
                          count++;
                        });
                      },
                      minusOnPress: () {
                        setState(() {
                          count--;
                        });
                      },
                      txt: "$count"),
                  carpetPage(
                      addOnPress: () {
                        setState(() {
                          count++;
                        });
                      },
                      minusOnPress: () {
                        setState(() {
                          count--;
                        });
                      },
                      txt: "$count")
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: AppButton(
                    width: double.infinity,
                    height: 0,
                    border: 12,
                    text: "Continue",
                    onPressed: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
