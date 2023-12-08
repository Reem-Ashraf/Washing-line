import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

shoppingCartRow({
  required String txt1,
  required String txt2
})=> Row(children: [
  Text(txt1,style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold),),
  const Spacer(),
  Text(txt2,style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold),),
  SizedBox(height: 1.5.h,),
]);
