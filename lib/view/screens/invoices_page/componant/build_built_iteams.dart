import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../utality/app_colors.dart';
import '../../../../utality/image_path.dart';

Widget billsItems({
  required String item,
  required String code,
  required String status,
  required String price,
  required Color statusColor,
  required VoidCallback onTap


})=>InkWell(
  onTap: onTap,
  child:   Padding(

    padding: const EdgeInsets.only(left: 15,right:15),

    child: Container(

      decoration: BoxDecoration(

          boxShadow: [

            BoxShadow(

                offset: const Offset(

                  2,

                  2,

                ),

                color: AppColors.grey, spreadRadius: 0, blurRadius: 3),

          ],

          color: AppColors.white,

          borderRadius: BorderRadius.circular(10)

      ),

      height: 8.h,padding: const EdgeInsets.only(right: 10),child: Row(

      children: [

        CircleAvatar(

          maxRadius: 40.sp,

          backgroundColor: AppColors.softRoze,

          child: Image(image: AssetImage(AppImages.groupMaskImage),),),

        Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(item,style: const TextStyle(fontWeight: FontWeight.bold),),

            Text("Code:$code",style: const TextStyle(fontWeight: FontWeight.bold),),



          ],

        ),

        const Spacer(),

        Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(price,style: const TextStyle(fontWeight: FontWeight.bold),),

            Text(status,style: TextStyle(fontWeight: FontWeight.bold,color:statusColor),),



          ],

        ),

      ],

    ),),

  ),
);
Widget showDialogTextField(
    {
      required String hintText,
      required TextEditingController controller,
      Icon? icon,
      double?width
    }
    )=> SizedBox(
  height: 5.h,
  width:width,
  child: Padding(
    padding: const EdgeInsets.only(right: 20,left:20 ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5),
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
Widget showDialogButton({
 // required double width,
 // required double height,
 // required double border,
  required String text,
  required VoidCallback onPressed,
})=>SizedBox(
  width: double.infinity,
  child:   ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: AppColors.orange,),
    onPressed:onPressed,
    child: Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
          color:AppColors.white),
    ),
  ),
);