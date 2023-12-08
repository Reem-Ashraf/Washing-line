import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:sizer/sizer.dart';
import 'package:wishingline/utality/app_colors.dart';
import 'package:wishingline/utality/image_path.dart';
import 'package:wishingline/view/screens/bills_page/pdf_creator.dart';

class BillsPage extends StatelessWidget {
  const BillsPage({Key? key, required this.path}) : super(key: key);
  final String path;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.backgroundColor,
          leading: PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              color: AppColors.appGreyText,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            constraints: const BoxConstraints.tightFor(
              width: 200,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: InkWell(
                  onTap: ()async {
                    await Printing.sharePdf(bytes: await pdf.save(), filename: 'wishing.pdf');
                  },
                  child: Row(
                    children: [
                      Text(
                        "Share by whats-up",
                        style: TextStyle(color: AppColors.appGreyText),
                      ),
                      const Spacer(),
                      Image(image: AssetImage(AppImages.whatsUpImage))
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: [
                      Text(
                        "Share by SMS",
                        style: TextStyle(color: AppColors.appGreyText),
                      ),
                      const Spacer(),
                      Image(image: AssetImage(AppImages.smsImage))
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: ()async{
                    await Printing.layoutPdf(
                        onLayout: (PdfPageFormat format) async => pdf.save());
                    
                  },
                  child: Row(
                    children: [
                      Text(
                        "Print",
                        style: TextStyle(color: AppColors.appGreyText),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.print,
                        color: AppColors.appGreyText,
                      )
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: ()async{
                    createPdf(context);

                  },
                  child: Row(
                    children: [
                      Text(
                        "Save",
                        style: TextStyle(color: AppColors.appGreyText),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.save_alt_outlined,
                        color: AppColors.appGreyText,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                  child: Text(
                "Continue",
                style: TextStyle(
                    color: AppColors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp),
              )),
            ),
          ],
        ),
        body: PDFView(
          filePath: path,
        ));
  }
}

// SingleChildScrollView(
// child: Padding(
// padding: const EdgeInsets.only(right: 20,left: 20),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Image(image: AssetImage(AppImages.billsImage,),width: 30.w,),
// Text("Washing Line Laundries",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
// Text("Simplified tax bill",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),),
// Text("36587895475",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold),),
// SizedBox(height: 2.h,),
// Devider(),
// SizedBox(height: 1.h,),
// Row(
// children: [
// Spacer(),
// BillsColumn(txt1: "Delegate", txt2: "Mohamed"),
// Spacer(),
// BillsColumn(txt1: "Area", txt2: "Gaddah"),
// Spacer(),
// BillsColumn(txt1: "Time", txt2: "10:15"),
// Spacer(),
// BillsColumn(txt1: "Date", txt2: "1/5/2023"),
// Spacer(),
// ],
//
// ),
// SizedBox(height: 1.h,),
// Devider(),
// SizedBox(height: 1.h,),
// BillsRow(txt1: "Reference", txt2: "1234567895845"),
// BillsRow(txt1: "Device Number", txt2: "12345"),
// BillsRow(txt1: "invoices Number", txt2: "855"),
// BillsRow(txt1: "Tax Number", txt2: "1234567895845"),
// BillsRow(txt1: "Branch", txt2: "Dmam"),
// BillsRow(txt1: "Pay Method", txt2: "Upon Receipt"),
// SizedBox(height: 1.h,),
// Devider(),
// SizedBox(height: 1.h,),
// BillsRow(txt1: "Client", txt2: "Yousef"),
// BillsRow(txt1: "Client Phone", txt2: "123456"),
// BillsRow(txt1: "Client Code", txt2: "sy8lpi6"),
// SizedBox(height: 1.h,),
// Devider(),
// SizedBox(height: 1.h,),
// Row(
// children: [
// Spacer(),
// BillsColumn(txt1: "Product Name", txt2: "Skirt"),
// Spacer(),
// BillsColumn(txt1: "amount", txt2: "3"),
// Spacer(),
// BillsColumn(txt1: "Price", txt2: "10"),
// Spacer(),
// BillsColumn(txt1: "Total", txt2: "23"),
// Spacer(),
// ],
//
// ),
// SizedBox(height: 1.h,),
// Devider(),
// SizedBox(height: 1.h,),
// BillsRow(txt1: "Total amount without \nValue added tax", txt2: "40 R.S"),
// BillsRow(txt1: "The total amount \nafter discount", txt2: "35 R.s"),
// BillsRow(txt1: "Total value added \ntax (15%)", txt2: "15 R.s"),
// BillsRow(txt1: "Total bill amount", txt2: "55 R.s"),
// SizedBox(height: 1.h,),
// Devider(),
// SizedBox(height: 1.h,),
// Row(children: [
// Text("Note :",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold),),
// Text(" There are pieces in the skirt",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold),),
// SizedBox(height: 1.5.h,),
// ]),
// SizedBox(height: 1.h,),
// Devider(),
// SizedBox(height: 3.h,),
// Image(image: AssetImage(AppImages.qrCode)),
// SizedBox(height: 5.h,)
//
//
//
//
// ],),
// ),
// )
