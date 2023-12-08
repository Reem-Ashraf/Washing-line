import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget textField(
{
  required String hintText,
  required TextEditingController controller,
   Icon? icon
}
    )=> SizedBox(
  height: 7.h,
  child: Padding(
    padding: const EdgeInsets.only(right: 20,left:20 ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TextFormField(
        // obscureText: isSecure,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: icon,
          fillColor: Colors.white,
          filled: true,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
        validator: (value){
          if(value!.isEmpty){
            return "Thid field musn't be empty";
          }
          return null;
        },
      ),
    ),
  ),
);