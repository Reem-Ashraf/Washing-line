import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../utality/app_colors.dart';
import '../../../utality/image_path.dart';
import '../../app componant/app_button.dart';
import '../lay out/lay_out_screen.dart';

class HealpinPage extends StatefulWidget {
  const HealpinPage({Key? key}) : super(key: key);

  @override
  State<HealpinPage> createState() => _HealpinPageState();
}

class _HealpinPageState extends State<HealpinPage> {
  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
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
                  image: AssetImage(AppImages.emailSent),
                  width: 20.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Center(
                    child: Text(
                      "Your email has sent successfully. will Get back to you soon.",
                      style: TextStyle(
                          color: AppColors.appGreyText, fontSize: 13.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Center(
                  child: AppButton(
                      width: 60.w,
                      height: 2.h,
                      text: 'Go to home page',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LayOUt()));
                      },
                      border: 12),
                ),
              ],
            );
          });
    }

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
            "Healping",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
                color: AppColors.appGreyText),
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 30.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: controller,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: "Write your message....."),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Write your message in detail and one of our team members will answer your question as quickly as possible.",
                style: TextStyle(color: AppColors.appGreyText),
              ),
              SizedBox(
                height: 32.h,
              ),
              Center(
                child: AppButton(
                    width: 70.w,
                    height: 2.h,
                    text: 'Send',
                    onPressed: () {
                      showSimpleDialog();
                    },
                    border: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
