import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/global_widget/custombutton_bar.dart';
import 'package:my_clone_fb/utilities/image_const.dart';
import 'package:my_clone_fb/view/login_screen/login_screen.dart';
import 'package:my_clone_fb/view/whats_your_name/whats_your_name.dart';

class JoinfbScreen extends StatefulWidget {
  const JoinfbScreen({super.key});

  @override
  State<JoinfbScreen> createState() => _JoinfbScreenState();
}

class _JoinfbScreenState extends State<JoinfbScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Create account"),),
      body: Column(
        children: [
          Container(height: 2,
            color:ColorConst.GREY1 ,),
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
            Text("We’ll help you",
            style: TextStyle(fontSize: 12,
            fontWeight: FontWeight.w400,
            color: ColorConst.GREY2),),
            Text("create new account in a few easy steps",
            style: TextStyle(fontSize: 12,
            fontWeight: FontWeight.w400,
            color: ColorConst.GREY2),
            ),
            SizedBox(height: 52),
            
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WhatsYourName(),));
              },
              child: CustomButtonBar(text: "Next",height: 40,width: 300,)),
            SizedBox(height: 130),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen() ,));
              },
              child: Text("Already have an account?",
              style: TextStyle(fontSize: 14,
              fontWeight: FontWeight.bold,
              color: ColorConst.PRIMARYBLUE),),
            )
          ],
      )
    );
  }
}