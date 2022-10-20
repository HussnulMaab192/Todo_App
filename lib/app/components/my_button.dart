import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_first_app/app/components/constants.dart';

Widget myButton({required String text, required void Function()? onPressed}) {
  return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColor.buttonColor),
        minimumSize: MaterialStateProperty.all(Size(360, Get.height * 0.06)),
        // Background color
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
      ));
}

Widget defaultTextField({
  required TextEditingController controller,
  String? Function(String?)? validator,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextFormField(
      controller: controller,
      validator: validator,
    ),
  );
}
