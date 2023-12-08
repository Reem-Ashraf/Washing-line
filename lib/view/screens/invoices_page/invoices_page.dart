import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:wishingline/utality/app_colors.dart';
import 'package:wishingline/utality/image_path.dart';

import 'componant/build_built_iteams.dart';

class InvoicesPage extends StatefulWidget {
  const InvoicesPage({super.key});

  @override
  State<InvoicesPage> createState() => _InvoicesPageState();
}

class _InvoicesPageState extends State<InvoicesPage> {
  //const BillsPage({Key? key}) : super(key: key);
  ListView list1 = ListView(
    children: const <Widget>[],
  );

  TextEditingController codeController = TextEditingController();

  TextEditingController phoneController = TextEditingController();
  TextEditingController couponController = TextEditingController();

  int _value = 1;

  @override
  Widget build(BuildContext context) {
    Future<void> implementDialog() async {
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
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              child: Text(
                            "Choose payment method:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 11.sp),
                          )),
                          InkWell(
                              child: Text(
                            "Continue",
                            style: TextStyle(
                                color: AppColors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp),
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              }),
                          Text(
                            "Credit or debit card ",
                            style: TextStyle(
                                color: AppColors.appGreyText, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => AppColors.orange),
                              value: 2,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              }),
                          Text(
                            "Payment is cash",
                            style: TextStyle(
                                color: AppColors.appGreyText, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: SizedBox(
                          height: 5.h,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.white,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              // prefixIcon: Icon(Icons.search),
                              //hintText: "Search",
                              suffixIcon: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(50, 10),
                                  backgroundColor: AppColors.orange,
                                ),
                                child: Text(
                                  "implement",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      // fontSize: 15.sp,
                                      color: AppColors.white),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          });
    }

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
                        onPressed: () {
                          implementDialog();
                        },
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
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Image(
            image: AssetImage(AppImages.menuIcon),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10),
            child: Image(
              image: AssetImage(AppImages.filterIcon),
              height: 10.h,
            ),
          ),
        ],
        title: Text(
          "Invoice",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
              color: AppColors.appGreyText),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Center(
              child: ToggleSwitch(
                inactiveBgColor: AppColors.white,
                activeBgColor: [AppColors.orange],
                inactiveFgColor: AppColors.orange,
                activeFgColor: AppColors.white,
                // minWidth: 25.w,
                minHeight: 7.h,
                initialLabelIndex: 0,
                customWidths: [40.w, 40.w],
                radiusStyle: true,
                totalSwitches: 2,
                labels: const ['Recived', 'Not Recived'],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
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
          )
        ],
      ),
    );
  }
}
