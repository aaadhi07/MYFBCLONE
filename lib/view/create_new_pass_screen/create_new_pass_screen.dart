import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/global_widget/custombutton_bar.dart';
import 'package:my_clone_fb/view/login_screen/login_screen.dart';

class CreateNewPassScreen extends StatelessWidget {
  const CreateNewPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reset your password"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
              color: ColorConst.GREY2,),),
              SizedBox(height: 40),
              Text("Create new password",
              style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w600,),),
                 SizedBox(height: 10),
                Text("You will use this password to access your account.",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.GREY2,
                  fontWeight: FontWeight.w400),),
                   SizedBox(height: 10),
                Text("Enter a combination of at least six numbers, letters",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.GREY2,
                  fontWeight: FontWeight.w400),),
                     SizedBox(height: 10),
                Text("and punctuation marks.",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.GREY2,
                  fontWeight: FontWeight.w400),),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(suffixIcon: Icon(Icons.close),
                        labelText: " New Password"
                      ),
                    ),
                  ),
                  SizedBox(height: 170),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen() ,));
                    },
                    child: CustomButtonBar(text: "Log In",height: 40,width: 300,))
      ],),
    );
  }
}