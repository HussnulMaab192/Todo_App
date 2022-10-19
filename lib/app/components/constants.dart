import 'package:flutter/material.dart';

Widget heading(String text) {
  return Text(
    text,
    style: TextStyle(
      color: const Color(0xff000000).withOpacity(0.9),
      fontWeight: FontWeight.w700,
      fontSize: 22,
      height: 33,
      fontFamily: "Poppins",
    ),
  );
}

Widget subHeading(String text) {
  return Text(
    text,
    style: TextStyle(
      color: const Color(0xff000000).withOpacity(0.8),
      fontWeight: FontWeight.w600,
      fontSize: 15,
      height: 22.5,
      fontFamily: "Poppins",
    ),
  );
}

Widget taskName(String text) {
  return Text(
    text,
    style: TextStyle(
      color: const Color(0xff000000).withOpacity(0.8),
      fontWeight: FontWeight.w700,
      fontSize: 15,
      height: 22.5,
      fontFamily: "Poppins",
    ),
  );
}

class AppColor {
  static Color backgroundColor = const Color(0xffE5E5E5);
}
