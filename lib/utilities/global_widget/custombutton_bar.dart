import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/view/joinfb_screen/joinfb_screen.dart';

class CustomButtonBar extends StatelessWidget {
  final String text;
  const CustomButtonBar({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 300,
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