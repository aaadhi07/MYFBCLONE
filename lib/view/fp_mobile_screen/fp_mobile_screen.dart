import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/global_widget/custombutton_bar.dart';
import 'package:my_clone_fb/view/fp_email_screen/fp_email_screen.dart';
import 'package:my_clone_fb/view/otp_verify_screen/otp_verify_screen.dart';

class FpMobileScreen extends StatelessWidget {
  const FpMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Find Your Account"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
              color: ColorConst.GREY2,),),
              SizedBox(height: 40),
              Text("Enter Your Phone Number",
              style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w600,),),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(decoration: InputDecoration(
                    suffixIcon: Icon(Icons.close),
                    labelText: "Mobile Number"
                  ),),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerifyScreen(),));
                  },
                  child: CustomButtonBar(text: "Find Your Account",height: 40,width: 300,)),
                 SizedBox(height: 276),
                 InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => FpEmailScreen(), ));
                  },
                   child: Text("Search by email insted",
                   style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w500,color: ColorConst.PRIMARYBLUE
                   ),),
                 )
      ],),
    );
  }
}