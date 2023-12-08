import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:wishingline/utality/app_colors.dart';
import 'package:wishingline/utality/image_path.dart';
import 'package:wishingline/view/screens/helping_page/helping_page.dart';
import 'package:wishingline/view/screens/home_page/componant/componant.dart';
import 'package:wishingline/view/screens/notification_page/notification_page.dart';
import 'package:wishingline/view/screens/privcy_and_policy/privecy_and_policy.dart';
import 'package:wishingline/view/screens/profile_page/profile_page.dart';
import 'package:wishingline/view/screens/reports/reports.dart';
import '../terms_and_condition_page/terms_and_condition_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool value = true;
final advancedDrawerController = AdvancedDrawerController();
bool on = false;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ///
    Future<void> showSimpleDialog() async {
      await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ), // <-- SEE HERE
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Center(
                    child: Text(
                      "Select Language",
                      style: TextStyle(
                          color: AppColors.appGreyText, fontSize: 13.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30.w,
                      height: 8.h,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            side: MaterialStateProperty.all(BorderSide(
                              color: AppColors.softRoze,
                              width: 2.0,
                            ))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Image(image: AssetImage(AppImages.americaFlag)),
                              Text(
                                "English",
                                style: TextStyle(
                                    color: AppColors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                      height: 8.h,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            side: MaterialStateProperty.all(BorderSide(
                              color: AppColors.softRoze,
                              width: 2.0,
                            ))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Image(
                                  image: AssetImage(AppImages.saudiArabiaFlag)),
                              Text(
                                "Arabic",
                                style: TextStyle(
                                    color: AppColors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Text(
                    "Apply",
                    style: TextStyle(
                        color: AppColors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            );
          });
    }

    ///
    Future<void> rating() async {
      await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ), // <-- SEE HERE
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Center(
                    child: Text(
                      "Send Your Notes",
                      style: TextStyle(
                          color: AppColors.appGreyText, fontSize: 13.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Center(
                  child: RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemSize: 40,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      // print(rating);
                    },
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30.w,
                      height: 6.h,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                            side: MaterialStateProperty.all(BorderSide(
                              color: AppColors.softRoze,
                              width: 2.0,
                            ))),
                        child: Text(
                          "Disable",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                              color: AppColors.orange),
                        ),
                      ),
                    ),
                    Container(
                      width: 30.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.orange),
                      child: MaterialButton(
                        //  height: 5.h,
                        onPressed: () {},
                        child: Text(
                          "Send",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                              color: AppColors.softRoze),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          });
    }

    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.orange, AppColors.orange],
          ),
        ),
      ),
      controller: advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: Container(
          color: AppColors.orange,
          child: ListTileTheme(
            textColor: AppColors.white,
            iconColor: AppColors.white,
            child: Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                      width: 25.w,
                      height: 20.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        color: Colors.black26,
                        shape: BoxShape.circle,
                      ),
                      child: Image(
                        image: AssetImage(AppImages.profileImage),
                        width: 20.w,
                      )),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilePage()));
                    },
                    leading: const Icon(Icons.person),
                    title: const Text('Personal profile'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NotificationPage()));
                    },
                    leading: const Icon(Icons.notifications_none),
                    title: const Text('Notification'),
                  ),
                  ListTile(
                    onTap: () {
                      showSimpleDialog();
                    },
                    leading: const Icon(Icons.language),
                    title: const Text('Language'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.share),
                    title: const Text('Share App'),
                  ),
                  ListTile(
                    onTap: () {
                      rating();
                    },
                    leading: const Icon(Icons.rate_review),
                    title: const Text('Rate us'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HealpinPage()));
                    },
                    leading: Image(
                      image: AssetImage(AppImages.helpingIcon),
                    ),
                    title: const Text('helping'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TermsAndCondition()));
                    },
                    leading: const Icon(Icons.help_outline),
                    title: const Text('Terms and condition'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReportsPage()));
                    },
                    leading: const Icon(Icons.text_snippet_sharp),
                    title: const Text('Reports'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PrivacyAndPolicy()));
                    },
                    leading: const Icon(Icons.privacy_tip_outlined),
                    title: const Text('Privacy and Policy'),
                  ),
                  // ListTile(
                  //   onTap: () {
                  //     Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyAndPolicy()));
                  //   },
                  //   leading: const Icon(Icons.logout),
                  //   title: const Text('LogOut'),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.backgroundColor,
          title: Text(
            'Washing Line',
            style: TextStyle(
                color: AppColors.appGreyText,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.list_outlined,
                    key: ValueKey<bool>(value.visible),
                    color: AppColors.appGreyText,
                  ),
                );
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications_none,
                color: AppColors.appGreyText,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 0, left: 0),
                      height: 5.h,
                      width: 75.w,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            labelText: "Search",
                            prefixIcon: Icon(Icons.search_outlined)),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 6),
                      height: 5.h,
                      width: 13.w,
                      decoration: BoxDecoration(
                        color: AppColors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image(
                        image: AssetImage(AppImages.levelsImage),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Row(
                  children: [
                    const Text("Services",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const Spacer(),
                    Text(
                      "Show all",
                      style: TextStyle(
                          color: AppColors.orange, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(
                                  2,
                                  2,
                                ),
                                color: AppColors.grey,
                                spreadRadius: 0,
                                blurRadius: 3),
                          ],
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10)),
                      //height: 17.h,
                      width: 27.w,
                      child: Column(
                        children: [
                          Image(image: AssetImage(AppImages.laundry)),
                          Text(
                            "Presser",
                            style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(top: 25),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(
                                  2,
                                  2,
                                ),
                                color: AppColors.grey,
                                spreadRadius: 0,
                                blurRadius: 3),
                          ],
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10)),
                      // height: 17.h,
                      width: 27.w,
                      child: Column(
                        children: [
                          Image(image: AssetImage(AppImages.clothesImage)),
                          Text(
                            "Fold",
                            style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3.5.h,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(top: 25),

                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(
                                  2,
                                  2,
                                ),
                                color: AppColors.grey,
                                spreadRadius: 0,
                                blurRadius: 3),
                          ],
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10)),
                      //height: 17.h,
                      width: 27.w,
                      child: Column(
                        children: [
                          Image(image: AssetImage(AppImages.washingMachine)),
                          Text(
                            "Washing",
                            style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Row(
                  children: [
                    homePageComponant(
                        txt: "Cleaning", image: AppImages.cleaning),
                    const Spacer(),
                    homePageComponant(
                        txt: "Dry & Wash", image: AppImages.dryAndWash),
                    const Spacer(),
                    homePageComponant(txt: "Drying", image: AppImages.dry),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Row(
                  children: [
                    homePageComponant(txt: "Cutting", image: AppImages.cutting),
                    const Spacer(),
                    homePageComponant(
                        txt: "Swing", image: AppImages.swingMachine),
                    const Spacer(),
                    homePageComponant(txt: "Tie Dye", image: AppImages.tieDye),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    advancedDrawerController.showDrawer();
  }
}
