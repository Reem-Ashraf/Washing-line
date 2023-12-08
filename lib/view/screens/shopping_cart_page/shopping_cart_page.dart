import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wishingline/utality/image_path.dart';

import '../../../utality/app_colors.dart';
import '../../app componant/app_button.dart';
import '../bills_page/pdf_creator.dart';
import '../profile_page/componant/textfield.dart';
import 'componant/componant.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

TextEditingController codeController = TextEditingController();
TextEditingController phoneController = TextEditingController();
List<Widget> item = [];

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> items = List<Widget>.generate(
        10,
        (index) => Container(
              padding: const EdgeInsets.only(right: 10, left: 10),
              height: 12.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.white),
              child: Row(
                children: [
                  Image(image: AssetImage(AppImages.carpetImage)),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Classic carpet colors",
                          style: TextStyle(
                              color: AppColors.appGreyText,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          "30 * 30 meter",
                          style: TextStyle(
                              color: AppColors.appGreyText,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 12),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 3.5.h,
                              width: 7.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: FloatingActionButton(
                                  backgroundColor: AppColors.softRoze,
                                  onPressed: () {
                                    setState(() {
                                      count--;
                                    });
                                  },
                                  shape: const BeveledRectangleBorder(
                                      borderRadius: BorderRadius.zero),
                                  child: Icon(
                                    Icons.minimize,
                                    color: AppColors.orange,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              "$count",
                              style: TextStyle(
                                  color: AppColors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            SizedBox(
                              height: 3.5.h,
                              width: 7.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: FloatingActionButton(
                                  backgroundColor: AppColors.orange,
                                  onPressed: () {
                                    setState(() {
                                      count++;
                                    });
                                  },
                                  shape: const BeveledRectangleBorder(
                                      borderRadius: BorderRadius.zero),
                                  child: Icon(
                                    Icons.add,
                                    color: AppColors.softRoze,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "40 R.S",
                          style: TextStyle(
                              color: AppColors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ));
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Image(
            image: AssetImage(AppImages.menuIcon),
          ),
          onPressed: () {},
        ),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: Text(
          "Shopping Cart",
          style: TextStyle(
              color: AppColors.appGreyText,
              fontWeight: FontWeight.bold,
              fontSize: 15.sp),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              icon: Icon(
                Icons.search_sharp,
                color: AppColors.appGreyText,
                size: 25.sp,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (build, context) => Dismissible(
                  key: ObjectKey(items),
                  onDismissed: (direction) {
                    items.remove(items);
                    print("Deleted");
                  },
                  background: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    color: AppColors.orange,
                    child: Icon(Icons.delete_forever,
                        color: AppColors.white, size: 32),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: items.first,
                  ),
                ),
                separatorBuilder: (build, context) => Container(),
                itemCount: items.length,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Total Payment :",
              style: TextStyle(
                fontSize: 15.sp,
              ),
            ),
            shoppingCartRow(txt1: " Total Price", txt2: "50 R.S"),
            shoppingCartRow(txt1: " Delivery tax", txt2: "10 R.S"),
            shoppingCartRow(txt1: " Services tax", txt2: "15 R.S"),
            shoppingCartRow(txt1: " Total amount", txt2: "75 R.S"),
            SizedBox(
              height: 9.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: AppButton(
                  width: double.infinity,
                  height: 5.h,
                  text: 'Continue',
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(50))),
                        context: context,
                        builder: (context) => Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image(
                                    image: AssetImage(AppImages.mobilePayment)),
                                SizedBox(
                                  height: 2.h,
                                ),
                                textField(
                                    hintText: 'Phone',
                                    controller: phoneController,
                                    icon: const Icon(Icons.phone)),
                                SizedBox(
                                  height: 2.h,
                                ),
                                textField(
                                    hintText: 'Code',
                                    controller: codeController,
                                    icon: const Icon(
                                        Icons.qr_code_scanner_sharp)),
                                SizedBox(
                                  height: 6.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20, left: 20),
                                  child: AppButton(
                                      width: double.infinity,
                                      height: 0,
                                      text: "Continue",
                                      onPressed: () async {
                                        createPdf(context);
                                      },
                                      border: 12),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                              ],
                            ));
                  },
                  border: 12),
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
