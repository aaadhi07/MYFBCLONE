import 'package:flutter/material.dart';
import 'package:my_clone_fb/view/birthday_screen/birthday_screen.dart';
import 'package:my_clone_fb/view/splash_screen/splash_screen.dart';
import 'package:my_clone_fb/view/whats_your_name/whats_your_name.dart';

void main (){
  runApp(MyAPP());
}
class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen()//SplashScreen(),
    );
  }
}