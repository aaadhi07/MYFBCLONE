import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/global_widget/custombutton_bar.dart';
import 'package:my_clone_fb/view/birthday_screen/birthday_screen.dart';

class WhatsYourName extends StatefulWidget {
  const WhatsYourName({super.key});

  @override
  State<WhatsYourName> createState() => _WhatsYourNameState();
}

class _WhatsYourNameState extends State<WhatsYourName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(leading: Icon(Icons.arrow_back_ios_new_outlined),
      title: Text("Create account"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Text("Whay’s your name?",
            style: TextStyle(fontSize: 18,
            fontWeight: FontWeight.w600,
            color: ColorConst.BLACK),),
            SizedBox(height: 10),
            Text("Enter the name you use in real life.",
            style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,
            color: ColorConst.GREY2),),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Container(
                    height: 56,
                    width: 160,
                    child: TextField(
                decoration: InputDecoration(
                  fillColor: ColorConst.PRIMARYBLUE,
                  counterStyle: TextStyle(fontSize: 14,),
                  labelText: 'First name',
                ),
              ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 56,
                    width: 160,
                    child: TextField(
                decoration: InputDecoration(
                  fillColor: ColorConst.PRIMARYBLUE,
                  counterStyle: TextStyle(fontSize: 14,),
                  labelText: 'Last name',
                ),),)
                ],
              ),
            ),
            SizedBox(height: 100),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BirthdayScreen(),));
              },
              child: CustomButtonBar(text: "Next"))
          ],
        ),
      ),
    );
  }
}