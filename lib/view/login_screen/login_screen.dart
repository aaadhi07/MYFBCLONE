import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/global_widget/custombutton_bar.dart';
import 'package:my_clone_fb/utilities/image_const.dart';
import 'package:my_clone_fb/view/home_screen/home_screen.dart';
import 'package:my_clone_fb/view/joinfb_screen/joinfb_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Image.asset(ImageConst.MAINLOGO,),
         SizedBox(height: 60),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 30),
           child: TextField(decoration: InputDecoration(labelText:"Phone or Email" ),),
         ),
          Padding(
           padding: const EdgeInsets.symmetric(horizontal: 30),
           child: TextField(decoration: InputDecoration(labelText: "Password"),),
         ),
         SizedBox(height: 50),
         InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
          },
          child: CustomButtonBar(text: "Log In")),
         SizedBox(height: 87),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              height: 1,
              width: 150,
              decoration: BoxDecoration(
              color: ColorConst.GREY2),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Or",style: TextStyle(fontSize: 18),),
              ),
              Container(
              height: 1,
              width: 150,
              decoration: BoxDecoration(
              color: ColorConst.GREY2,),),
           ],),),
            SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => JoinfbScreen(),));
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("Create new Facebook account"),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorConst.PRIMARYBLUE),
                    borderRadius: BorderRadius.circular(10)),
                ),
              )
        ],),
      ),
    );
  }
}