import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../utality/app_colors.dart';
import '../../../../../utality/image_path.dart';

class Services{
  String image;
  String? producName;
  String? price;
  Services({
    required this.image,
    required this.producName,
    required this.price
  });
}
List<Services>category=[
  Services(image: AppImages.carpetImage, producName: "carpet", price: '15 R.s',),
  Services(image: AppImages.carpetImage, producName: "carpet", price: '20 R.s'),
  Services(image: AppImages.carpetImage, producName: "carpet", price: '30 R.s'),
  Services(image: AppImages.carpetImage, producName: "carpet", price: '40 R.s'),
  Services(image: AppImages.carpetImage, producName: "carpet", price: '40 R.s'),
  Services(image: AppImages.carpetImage, producName: "carpet", price: '40 R.s')

];

Widget buildGradeIteams(Services services)=>Column(
  children: [
    Stack(
      children: [

        Image(image: AssetImage("${services.image}"),
          width: double.infinity,
          fit: BoxFit.cover,),
      ],
    ),
    Row(
      children: [
        Text("${services.producName}"),
      ],
    )
  ],
);

Widget carpetPage(
{
  required VoidCallback addOnPress,
  required VoidCallback minusOnPress,
  required String txt,

}
    )=>  Container(
  width: 42.w,

  clipBehavior: Clip.antiAliasWithSaveLayer,

  decoration: BoxDecoration(boxShadow: [

    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      spreadRadius: 2,
      blurRadius: 7,
      offset: const Offset(0, 3), // changes position of shadow

    ),

  ], color: Colors.white, borderRadius: BorderRadius.circular(15)),

  child:Column(

    children: [
      Image(image: AssetImage(AppImages.carpetImage,),


        height: 8.h,

        width: double.infinity,



        fit: BoxFit.cover,),

      SizedBox(height: 1.h,),

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
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          children: [
            SizedBox(
              // height: 3.5.h,
              width: 7.w,
              child: FloatingActionButton(
                backgroundColor: AppColors.softRoze,
                onPressed: minusOnPress,child: Icon(Icons.minimize,color: AppColors.orange,),),
            ),
            SizedBox(width: 2.w,),
            Text(txt,style: TextStyle(color: AppColors.orange,fontWeight: FontWeight.bold,fontSize: 15.sp),),
            SizedBox(width: 2.w,),
            SizedBox(
              // height: 3.5.h,
              width: 7.w,
              child: FloatingActionButton(
                backgroundColor: AppColors.orange,
                onPressed: addOnPress,child: Icon(Icons.add,color: AppColors.softRoze,),),
            ),
          ],
        ),
      ),
    ],
  ),

);