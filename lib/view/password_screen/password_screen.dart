import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/global_widget/custombutton_bar.dart';
import 'package:my_clone_fb/view/terms_privacy_screen/terms_privacy_screen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(title: Text("Password"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
              color: ColorConst.GREY2,),),
              SizedBox(height: 40),
              Text("Choose a password",
              style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w600,),),
                 SizedBox(height: 10),
                Text("Create a password at least with 6 chaeacters.",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.GREY2,
                  fontWeight: FontWeight.w400),),
                   SizedBox(height: 10),
                Text("It should be something others couldn’t guess.",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.GREY2,
                  fontWeight: FontWeight.w400),),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(suffixIcon: Icon(Icons.close),
                        labelText: "Password"
                      ),
                    ),
                  ),
                  SizedBox(height: 170),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>TermsPrivacyScreen() ,));
                    },
                    child: CustomButtonBar(text: "Next"))
      ],),
    );
  
  }
}