import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wishingline/utality/app_colors.dart';
import 'package:wishingline/utality/image_path.dart';
import 'package:wishingline/view/screens/lay%20out/lay_out_screen.dart';
import 'package:wishingline/view/screens/paid_page/paid_iteams/paid_iteams.dart';

import '../../app componant/app_button.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaidPageState();
}

class _PaidPageState extends State<PaymentPage> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    Future<void> showSimpleDialog() async {
      await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ), // <-- SEE HERE
              children: <Widget>[
                Image(
                  image: AssetImage(AppImages.successfulPurchase),
                  width: 20.w,
                ),
                Center(
                    child: Text(
                  "Payment succeful",
                  style:
                      TextStyle(color: AppColors.appGreyText, fontSize: 18.sp),
                )),
                SizedBox(
                  height: 2.h,
                ),
                Center(
                  child: AppButton(
                      width: 60.w,
                      height: 2.h,
                      text: 'Go to home page',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const LayOUt()));

                      },
                      border: 12),
                ),
              ],
            );
          });
    }
// --- Button Widget --- //

// --- Button Widget --- //
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_double_arrow_left_sharp,
            color: AppColors.appGreyText,
            size: 27.sp,
          ),
          onPressed: () {},
        ),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Electronic Payment",
          style: TextStyle(
            color: AppColors.appGreyText,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
        child: Column(
          children: [
            Image(image: AssetImage(AppImages.creditCardImage)),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text(
                  "Pay using an external device",
                  style: TextStyle(
                      color: AppColors.appGreyText,
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp),
                ),
                const Spacer(),
                Transform.scale(
                  scale: .8,
                  child: CupertinoSwitch(
                      activeColor: AppColors.orange,
                      value: value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value;
                        });
                      }),
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                const Spacer(),
                PaidMethod(
                    onTap: () {},
                    widget: Image(image: AssetImage(AppImages.payImage1))),
                const Spacer(),
                PaidMethod(
                    onTap: () {},
                    widget: Image(image: AssetImage(AppImages.payImage2))),
                const Spacer(),
                PaidMethod(
                    onTap: () {},
                    widget: Image(image: AssetImage(AppImages.applePay))),
                const Spacer(),
                PaidMethod(
                    onTap: () {},
                    widget: Image(image: AssetImage(AppImages.pointsImage))),
                const Spacer(),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: Text(
                    "200 R.S",
                    style: TextStyle(
                        color: AppColors.orange,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: AppButton(
                        width: 45.w,
                        height: 7.h,
                        text: 'Pay Now',
                        onPressed: () {
                          print("helo");
                          showSimpleDialog();
                        },
                        border: 12)),
                const Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
