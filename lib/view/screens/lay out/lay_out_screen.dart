import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../utality/app_colors.dart';
import '../../../view model/layout cubit/lay_out_cubit.dart';

class LayOUt extends StatelessWidget {
  const LayOUt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayOutCubit(),
      child: BlocConsumer<LayOutCubit, LayOutState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LayOutCubit myCubit = LayOutCubit.get(context);
          return Scaffold(
            body: myCubit.pages[myCubit.currentIndex],
            bottomNavigationBar: Container(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 5, 0, 15),
              child: GNav(
                rippleColor: AppColors.binkyOrangeColor,
                hoverColor: AppColors.white,
                activeColor: AppColors.orange,
                gap: 1,
                color: AppColors.grey,
                //iconSize: 15.sp,
                tabBorderRadius: 30,

                padding:
                    const EdgeInsets.symmetric(vertical: 11, horizontal: 10),
                tabBackgroundColor: AppColors.backgroundColor,
                tabs: const [
                  GButton(icon: Icons.home_filled, text: 'Home'),
                  GButton(icon: Icons.paste_outlined, text: 'Invoice'),
                  GButton(icon: Icons.shopping_cart, text: 'Shopping Cart'),
                  GButton(icon: Icons.directions, text: 'Direction'),
                ],
                selectedIndex: myCubit.currentIndex,
                onTabChange: (value) {
                  myCubit.changeIndex(value);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
// BottomNavigationBar(
//                   items: const [
//                     BottomNavigationBarItem(
//
//                         icon: (Icon(
//                           Icons.home_filled,
//                         )),
//                         label: 'Home'),
//                     BottomNavigationBarItem(
//                         icon: (Icon(
//                           Icons.paste_outlined,
//                         )),
//                         label: 'Invoices'),
//                     BottomNavigationBarItem(
//                         icon: (Icon(
//                           Icons.shopping_cart,
//                         )),
//                         label: 'ShoppingCart'),
//                     BottomNavigationBarItem(
//                         icon: (Icon(
//                           Icons.directions,
//                         )),
//                         label: 'Direction'),
//                   ],
//                   // showSelectedLabels: true,
//                   showUnselectedLabels: true,
//                   currentIndex: myCubit.currentIndex,
//                   selectedItemColor: AppColors.orange,
//                   unselectedItemColor: AppColors.grey,
//                   onTap: (value) {
//                     myCubit.changeIndex(value);
//                   },
//                 ),
