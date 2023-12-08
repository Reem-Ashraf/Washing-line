import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../utality/app_colors.dart';
import '../../../utality/image_path.dart';
import '../../app componant/app_button.dart';
import 'componant/textfield.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

bool isSecure = false;
TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController genderController = TextEditingController();
TextEditingController codeController = TextEditingController();

class _ProfilePageState extends State<ProfilePage> {
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
            "Profile",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
                color: AppColors.appGreyText),
          )),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.white,
                      maxRadius: 45,
                      child: Image(
                        image: AssetImage(AppImages.profileImage),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, bottom: 10),
                      child: CircleAvatar(
                        backgroundColor: AppColors.grey,
                        maxRadius: 15,
                        child: CircleAvatar(
                          maxRadius: 13,
                          backgroundColor: AppColors.white,
                          child: Icon(
                            Icons.linked_camera_outlined,
                            color: AppColors.grey,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              textField(
                  hintText: 'Name',
                  controller: nameController,
                  icon: const Icon(Icons.person)),
              SizedBox(
                height: 2.h,
              ),
              textField(
                  hintText: 'Email',
                  controller: emailController,
                  icon: const Icon(Icons.email_outlined)),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: SizedBox(
                  height: 7.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: TextFormField(
                      obscureText: isSecure,
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(isSecure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isSecure = !isSecure;
                            });
                          },
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Thid field musn't be empty";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),

              ///make this text field again
              textField(
                  hintText: 'Gender',
                  controller: genderController,
                  icon: const Icon(Icons.male)),
              SizedBox(
                height: 2.h,
              ),
              textField(
                  hintText: 'Code',
                  controller: codeController,
                  icon: const Icon(Icons.qr_code_scanner_sharp)),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: AppButton(
                      width: 65.w,
                      height: 5.h,
                      text: 'Save Change',
                      onPressed: () {
                        print("helo");
                      },
                      border: 12)),
            ],
          ),
        ),
      ),
    );
  }
}
