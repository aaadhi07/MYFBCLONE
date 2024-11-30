import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/global_widget/custombutton_bar.dart';
import 'package:my_clone_fb/view/create_new_pass_screen/create_new_pass_screen.dart';

class OtpVerifyScreen extends StatelessWidget {
  const OtpVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Find Your Account"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
              color: ColorConst.GREY2,),),
              SizedBox(height: 40),
              Text("Enter the code we sent to",
              style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w400,),),
                SizedBox(height: 5),
                Text("Sanjayshendy123@gmail.com",
              style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w600,),),
                 SizedBox(height: 10),
                Text("We sent 6 digit code to your email address.",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.GREY2,
                  fontWeight: FontWeight.w400),),
                  SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: PinCodeFields(
                       length: 6,
                       obscureText: true,
                       obscureCharacter: "*",
                       onComplete:(value) => print ,),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewPassScreen(),));
                    },
                    child: CustomButtonBar(text: "Continue",height: 40,width: 300,)),
                  SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 43),
                    child: Row(
                      children: [
                      Icon(Icons.email_outlined),
                      SizedBox(width: 23),
                      Text("Send email again",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400),)
                    ],),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 43),
                    child: Row(
                      children: [
                      Icon(Icons.sms_outlined),
                      SizedBox(width: 23),
                      Text("Get code via SMS",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400))
                    ],),
                  ),
      ],),
    );
  }
}