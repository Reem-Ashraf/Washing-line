import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../utality/app_colors.dart';
import '../invoices_page/componant/build_built_iteams.dart';

class ReportsPage extends StatelessWidget {
  ReportsPage({Key? key}) : super(key: key);
  TextEditingController codeController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<void> showSimpleDialog() async {
      await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              backgroundColor: AppColors.backgroundColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ), // <-- SEE HERE
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: Text("Phone",
                          style: TextStyle(
                              color: AppColors.appGreyText, fontSize: 13.sp)),
                    ),
                    showDialogTextField(
                      hintText: '',
                      controller: codeController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: Text(
                        "code",
                        style: TextStyle(
                            color: AppColors.appGreyText, fontSize: 13.sp),
                      ),
                    ),
                    showDialogTextField(
                      hintText: '',
                      controller: phoneController,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 50, right: 50),
                      child: Center(
                          child: showDialogButton(
                        text: "Search",
                        onPressed: () {},
                      )),
                    )
                  ],
                )
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
          "Reports",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
              color: AppColors.appGreyText),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Center(
              child: ToggleSwitch(
                inactiveBgColor: AppColors.white,
                activeBgColor: [AppColors.orange],
                inactiveFgColor: AppColors.orange,
                activeFgColor: AppColors.white,
                // minWidth: 25.w,
                minHeight: 6.h,
                initialLabelIndex: 0,
                customWidths: [25.w, 25.w, 25.w],
                radiusStyle: true,
                totalSwitches: 3,
                labels: const ['Annual', ' Monthly', 'Daily'],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  billsItems(
                      item: 'Black Wool rug',
                      code: 'Code:12568',
                      status: 'Completed',
                      price: '150 R.s',
                      statusColor: AppColors.green,
                      onTap: () {
                        showSimpleDialog();
                      }),
                  SizedBox(
                    height: 2.h,
                  ),
                  billsItems(
                      item: 'Black Wool rug',
                      code: 'Code:12568',
                      status: 'Warning',
                      price: '150 R.s',
                      statusColor: AppColors.red,
                      onTap: () {
                        showSimpleDialog();
                      }),
                  SizedBox(
                    height: 2.h,
                  ),
                  billsItems(
                      item: 'Black Wool rug',
                      code: 'Code:12568',
                      status: 'Completed',
                      price: '150 R.s',
                      statusColor: AppColors.green,
                      onTap: () {
                        showSimpleDialog();
                      }),
                  SizedBox(
                    height: 2.h,
                  ),
                  billsItems(
                      item: 'Black Wool rug',
                      code: 'Code:12568',
                      status: 'Warning',
                      price: '150 R.s',
                      statusColor: AppColors.red,
                      onTap: () {
                        showSimpleDialog();
                      }),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    color: AppColors.softRoze,
                    height: 6.h,
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      "1/5/2021",
                      style: TextStyle(
                          color: AppColors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    )),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  billsItems(
                      item: 'Black Wool rug',
                      code: 'Code:12568',
                      status: 'Completed',
                      price: '150 R.s',
                      statusColor: AppColors.green,
                      onTap: () {
                        showSimpleDialog();
                      }),
                  SizedBox(
                    height: 2.h,
                  ),
                  billsItems(
                      item: 'Black Wool rug',
                      code: 'Code:12568',
                      status: 'Warning',
                      price: '150 R.s',
                      statusColor: AppColors.red,
                      onTap: () {
                        showSimpleDialog();
                      }),
                  SizedBox(
                    height: 2.h,
                  ),
                  billsItems(
                      item: 'Black Wool rug',
                      code: 'Code:12568',
                      status: 'Completed',
                      price: '150 R.s',
                      statusColor: AppColors.green,
                      onTap: () {
                        showSimpleDialog();
                      }),
                  SizedBox(
                    height: 2.h,
                  ),
                  billsItems(
                      item: 'Black Wool rug',
                      code: 'Code:12568',
                      status: 'Warning',
                      price: '150 R.s',
                      statusColor: AppColors.red,
                      onTap: () {
                        showSimpleDialog();
                      }),
                  SizedBox(
                    height: 2.h,
                  ),
                  billsItems(
                      item: 'Black Wool rug',
                      code: 'Code:12568',
                      status: 'Completed',
                      price: '150 R.s',
                      statusColor: AppColors.green,
                      onTap: () {
                        showSimpleDialog();
                      }),
                  SizedBox(
                    height: 2.h,
                  ),
                  billsItems(
                      item: 'Black Wool rug',
                      code: 'Code:12568',
                      status: 'Warning',
                      price: '150 R.s',
                      statusColor: AppColors.red,
                      onTap: () {}),
                  SizedBox(
                    height: 2.h,
                  ),
                  billsItems(
                      item: 'Black Wool rug',
                      code: 'Code:12568',
                      status: 'Completed',
                      price: '150 R.s',
                      statusColor: AppColors.green,
                      onTap: () {}),
                  SizedBox(
                    height: 2.h,
                  ),
                  billsItems(
                      item: 'Black Wool rug',
                      code: 'Code:12568',
                      status: 'Warning',
                      price: '150 R.s',
                      statusColor: AppColors.red,
                      onTap: () {}),
                  SizedBox(
                    height: 2.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              "Total number of invoice: 230",
              style: TextStyle(
                  color: AppColors.appGreyText,
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
            ),
            Text(
              "Total amount paid: 3744",
              style: TextStyle(
                  color: AppColors.appGreyText,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp),
            ),
            SizedBox(
              height: 4.h,
            ),
          ],
        ),
      ),
    );
  }
}
