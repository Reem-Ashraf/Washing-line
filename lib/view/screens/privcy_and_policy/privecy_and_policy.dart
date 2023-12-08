import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../utality/app_colors.dart';

class PrivacyAndPolicy extends StatelessWidget {
  const PrivacyAndPolicy({Key? key}) : super(key: key);

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
            "Privacy & Policy",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
                color: AppColors.appGreyText),
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                '"These are the terms and conditions governing the use of this The service and the agreement between you and the company. Determine These terms and conditions all rights and obligations Users in connection with the use of the Service. The Service is conditional on your acceptance of these terms and conditions And comply with it. These terms and conditions apply to All visitors, users and others who access Service or use it.',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppColors.appGreyText),
              ),
              Text(
                "By accessing Service or use of the Service, you agree to be bound by these Terms Terms and Conditions Terms: If you do not agree to any Part of these Terms and Conditions, you may not access To the service. You represent that you are over 18 years of age.The company does not allow anyone under 18 years of age using the service.Service is also conditional on your acceptance",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppColors.appGreyText),
              ),
              Text(
                'and compliance The company\'s privacy policy. Describe a policy Our privacy policies and procedures By collecting, using and disclosing your personal information About it when you use the application or website and notify you about it. About privacy rights Your privacy and how the law protects you. Please read on Our Privacy Policy carefully before Use our service."',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppColors.appGreyText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
