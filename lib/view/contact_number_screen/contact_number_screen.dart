import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/global_widget/custombutton_bar.dart';
import 'package:my_clone_fb/view/password_screen/password_screen.dart';

class ContactNumberScreen extends StatefulWidget {
  const ContactNumberScreen({super.key});

  @override
  State<ContactNumberScreen> createState() => _ContactNumberScreenState();
}

class _ContactNumberScreenState extends State<ContactNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Mobile Number"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
              color: ColorConst.GREY2,),),
              SizedBox(height: 40),
              Text("Enter your mobile number",
              style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w600,),),
                 SizedBox(height: 10),
                Text("Enter the mobile number where you can be reached.",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.GREY2,
                  fontWeight: FontWeight.w400),),
                   SizedBox(height: 10),
                Text("No one else will see this on your profile",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.GREY2,
                  fontWeight: FontWeight.w400),),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(suffixIcon: Icon(Icons.close),
                        labelText: "Mobile Number"
                      ),
                    ),
                  ),
                  SizedBox(height: 170),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordScreen(),));
                    },
                    child: CustomButtonBar(text: "Next"))
      ],),
    );
  }
}