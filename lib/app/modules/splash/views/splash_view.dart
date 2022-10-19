import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:todo_first_app/app/components/constants.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgPicture.asset("assets/svg/corner.svg"),
          Positioned(
              top: Get.height * 0.16,
              left: Get.width * 0.3,
              child: Container(
                height: Get.height * 0.3,
                width: Get.height * 0.19,
                child: Image.asset("assets/pics/splash.png"),
              )),
          //   Positioned(child: AssetImage())
        ],
      ),
    );
  }
}
