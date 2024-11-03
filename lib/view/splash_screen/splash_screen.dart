import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/image_const.dart';
import 'package:my_clone_fb/view/splash_screen/profile_screen/profile_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
    void initState() {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileScreen(),
            ));
      },
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConst.MAINLOGO,
            height: 130,width: 100,
            ),
              GradientText(
          "Facebook",
          gradient: LinearGradient(
            colors: [
              ColorConst.BLUE1, 
              ColorConst.BLUE2, 
            ],
          ),
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 272),
        Text("From",style: TextStyle(
          fontSize: 14,
          color: ColorConst.GREYSHDE
        ),),
        SizedBox(height: 10),
        Image.asset(ImageConst.METALOG)
      ]),
    ));
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;

  GradientText(this.text, {required this.gradient, required this.style});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style.copyWith(color: Colors.white),
      ),
    );
  }
}