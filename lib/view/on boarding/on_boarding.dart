import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wishingline/view/auth/login_page.dart';

import '../../utality/app_colors.dart';
import 'componant/build_pageview_iteam.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

bool isLast = false;

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25),
            child: InkWell(
                onTap: () {
                  navigateAndFinish(context, const LoginPage());
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                      color: AppColors.orange,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Expanded(
            child: PageView.builder(
              controller: boardingController,
              onPageChanged: (int index) {
                if (index == boarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                  print("Last");
                } else {
                  setState(() {
                    isLast = false;
                  });
                  print("not last");
                }
              },
              itemBuilder: (context, index) =>
                  buildBoardingItem(boarding[index]),
              itemCount: boarding.length,
              physics: const BouncingScrollPhysics(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SmoothPageIndicator(
                    effect: ExpandingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      expansionFactor: 5,
                      activeDotColor: AppColors.orange,
                    ),
                    controller: boardingController,
                    count: boarding.length),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    if (isLast) {
                      navigateAndFinish(context, const LoginPage());
                    } else {
                      boardingController.nextPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }
                  },
                  backgroundColor: AppColors.orange,
                  child: const Icon(Icons.keyboard_double_arrow_right_sharp),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
