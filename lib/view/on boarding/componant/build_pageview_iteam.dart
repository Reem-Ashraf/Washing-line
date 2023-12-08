import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../utality/app_colors.dart';
import '../../../utality/image_path.dart';

class BoardingModel {
  String? image;
  String? title;
  String? body;
  BoardingModel({required this.image, required this.title, required this.body});
}

List<BoardingModel> boarding = [
  BoardingModel(
      image: AppImages.laundryAndDry,
      title: "Get special service",
      body:
          "You can now clean whatever you want and simply Only way through our application Subscribe now..."),
  BoardingModel(
      image: AppImages.businessRisk,
      title: "Professionalism of delegates",
      body:
          "The delegates work very professionally until you reachOrder to the customer quickly and without error"),
  BoardingModel(
      image: AppImages.takeAway,
      title: "Delivery speed",
      body:
          "Orders are delivered as quickly as possible to the customerChoose the appropriate payment method for him through us... ")
];
var boardingController = PageController();

Widget buildBoardingItem(BoardingModel model) => Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
          child: Image(
            image: AssetImage("${model.image}"),
            fit: BoxFit.cover,
          ),
        ),
        const Spacer(),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("${model.title}",
                style: TextStyle(
                    color: AppColors.orange,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Text("${model.body}",
                style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        const Spacer(),
      ],
    );
void navigateAndFinish(context, Widget) => Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => Widget),
    result: (route) => true);
