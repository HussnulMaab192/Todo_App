import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:todo_first_app/app/components/constants.dart';
import 'package:todo_first_app/app/components/my_button.dart';
import 'package:todo_first_app/app/modules/register/views/register_view.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Stack(
          fit: StackFit.loose,
          children: [
            SvgPicture.asset(
              "assets/svg/corner.svg",
              color: AppColor.buttonColor,
            ),
            Positioned(
              top: Get.height * 0.16,
              left: Get.width * 0.3,
              child: SizedBox(
                child: SvgPicture.asset("assets/svg/splash.svg"),
              ),
            ),
            Positioned(
              top: Get.height * 0.50,
              left: Get.width * 0.16,
              child: heading("Get things done with TODO"),
            ),
            Positioned(
              top: Get.height * 0.55,
              left: Get.width * 0.22,
              child: subHeading(
                  "     Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Sed\n     posuere gravida purus id eu\n condimentum est diam quam.\n    Condimentum blandit diam."),
            ),
            Positioned(
              top: Get.height * 0.82,
              right: 20,
              left: 20,
              child: myButton(
                text: "Get Started",
                onPressed: () {
                  Get.to(const RegisterView());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
