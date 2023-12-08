import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wishingline/utality/app_colors.dart';
import 'package:wishingline/view/screens/lay%20out/lay_out_screen.dart';

import '../../utality/image_path.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoinPageState();
}

var formKey = GlobalKey<FormState>();
bool isSecure = false;
TextEditingController numberController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoinPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 110),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Center(
                    child: Image(
                  image: AssetImage(AppImages.loginImage),
                )),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    // obscureText: isSecure,
                    controller: numberController,
                    decoration: const InputDecoration(
                      hintText: "Phone Number",
                      suffixIcon: Icon(Icons.phone),
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
                SizedBox(
                  height: 2.h,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextFormField(
                    obscureText: isSecure,
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                            isSecure ? Icons.visibility : Icons.visibility_off),
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
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.orange),
                    child: MaterialButton(
                      height: 6.h,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LayOUt()));
                        }
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: AppColors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 35.w,
                      height: .1.h,
                      color: AppColors.black,
                    ),
                    const Text(
                      "OR",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 35.w,
                      height: .1.h,
                      color: AppColors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                InkWell(
                    child: Icon(
                  Icons.fingerprint,
                  color: AppColors.orange,
                  size: 60.sp,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
