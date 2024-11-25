import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/global_widget/custombutton_bar.dart';
import 'package:my_clone_fb/view/contact_number_screen/contact_number_screen.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
   String? _selectedOption = "Option 1"; // Default selected value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Gender"),),
      body: Column(children: [
         Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
              color: ColorConst.GREY2,),),
              SizedBox(height: 40),
              Text("What,s your gender",
              style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w600,),),
                 SizedBox(height: 10),
                Text("You can change who sees your gennder on your profile later.",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.GREY2,
                  fontWeight: FontWeight.w400),),
                  SizedBox(height: 70),

                  RadioListTile<String>(
            title: Text("Male"),
            value: "Option 1",
            groupValue: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value;
              });
            },
          ),
          RadioListTile<String>(
            title: Text("Female"),
            value: "Option 2",
            groupValue: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value;
              });
            },
          ),
          RadioListTile<String>(
            title: Text("Other"),
            value: "Option 3",
            groupValue: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value;
              });
            },
          ),
          SizedBox(height: 176),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContactNumberScreen(),));
            },
            child: CustomButtonBar(text: "Next"))
      ],),
    );
  }
}