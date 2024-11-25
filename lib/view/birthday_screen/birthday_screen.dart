import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/global_widget/custom_date_picker.dart';
import 'package:my_clone_fb/utilities/global_widget/custombutton_bar.dart';
import 'package:my_clone_fb/view/gender_screen/gender_screen.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({super.key});

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Birthday"),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
              color: ColorConst.GREY2,),),
              SizedBox(height: 40),
              Text("What’s your birthday?",
              style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w600,),),
                SizedBox(height: 10),
                Text("Choose your date of birth.",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.GREY2,
                  fontWeight: FontWeight.w400),),
                   SizedBox(height: 5),
                Text("You can always make this private later.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,color: ColorConst.GREY2),),
                  SizedBox(height: 92),
                  CustomDatePicker(),
                  SizedBox(height: 92),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GenderScreen(),));
                    },
                    child: CustomButtonBar(text: "Next"))
                  
      ],) ,
    );
  }
}