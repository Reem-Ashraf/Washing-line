import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:sizer/sizer.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Row Devider()=> pw.Row(children: [
  pw.Spacer(),
  pw.Container(height: .2.h,width: 3.w,color: PdfColor.fromHex(("#000000"))),
  pw.Spacer(),
  devider(),
  pw.Spacer(),
  devider(),
  pw.Spacer(),
  devider(),
  pw.Spacer(),
  devider(),
  pw.Spacer(),
  devider(),
  pw.Spacer(),
  devider(),
  pw.Spacer(),
  devider(),
  pw.Spacer(),
  devider(),
  pw.Spacer(),
  devider(),
  pw.Spacer(),
  devider(),
  pw.Spacer(),
  devider(),
  pw.Spacer(),
  devider(),
  pw.Spacer(),
  devider(),
  pw.Spacer(),
  pw.Container(height: .2.h,width: 3.w,color: PdfColor.fromHex(("#000000"))),
  pw.Spacer(),
],);
 pw.Container devider()=> pw.Container(height: .2.h,width: 4.w,color: PdfColor.fromHex(("#000000")));
 BillsColumn({
  required String txt1,
  required String txt2
})=>pw.Column(
  children: [
    pw.Text(txt1,style: pw.TextStyle(fontSize: 12.sp,fontWeight: pw.FontWeight.bold),),
    pw.Text(txt2,style: pw.TextStyle(fontSize: 12.sp,fontWeight: pw.FontWeight.bold),),

  ],
);
BillsRow({
  required String txt1,
  required String txt2
})=> pw.Row(children: [
pw.Text(txt1,style: pw.TextStyle(fontSize: 12.sp,fontWeight: pw.FontWeight.bold),),
pw.Spacer(),
pw.Text(txt2,style: pw.TextStyle(fontSize: 12.sp,fontWeight: pw.FontWeight.bold),),
  pw.SizedBox(height: 1.5.h,),
]);