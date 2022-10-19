import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget myButton({required String text, required void Function()? onPressed}) {
  return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
        padding:
            EdgeInsets.all(MediaQuery.of(Get.context!).size.height * 0.125),
        child: Text(text),
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
