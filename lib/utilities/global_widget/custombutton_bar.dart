import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';

class CustomButtonBar extends StatelessWidget {
  final String text;
final double width;
final double height;
  const CustomButtonBar({
    Key? key,
    required this.text,
     required this.width,
      required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [ColorConst.PRIMARYBLUE,ColorConst.BLUE2]),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: ColorConst.WHITE,
          ),
        ),
      ),
    );
  }
}