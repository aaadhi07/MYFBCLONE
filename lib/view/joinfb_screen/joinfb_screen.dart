import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/image_const.dart';

class JoinfbScreen extends StatelessWidget {
  const JoinfbScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 21),
              child: Row(
              children: [
                Container(height: 13,width: 8,
                  child: Icon(Icons.arrow_back_ios_new,
                  ),
                ),
                SizedBox(width: 25),
                Text("Create account",
                style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.w400,color: ColorConst.BLACK
                ),)
              ],
                        ),
            ),
            SizedBox(height: 11),
            Container(height: 2,
              color:ColorConst.GREYSHDE ,),
              SizedBox(height: 30),
              Image.asset(ImageConst.JOINSCRN),
              SizedBox(height: 106),
              Text("Join Facebook",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: ColorConst.BLACK
              ),),
              SizedBox(height: 20),
              
            ],
        ),
      )
    );
  }
}