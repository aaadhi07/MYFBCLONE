import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/global_widget/custombutton_bar.dart';
import 'package:my_clone_fb/view/login_screen/login_screen.dart';

class TermsPrivacyScreen extends StatefulWidget {
  const TermsPrivacyScreen({super.key});

  @override
  State<TermsPrivacyScreen> createState() => _TermsPrivacyScreenState();
}

class _TermsPrivacyScreenState extends State<TermsPrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Terms & Privavcy"),),
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
              color: ColorConst.GREY2,),),
              SizedBox(height: 40),
              Text("Finishing signing up",
              style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w600,),),
                 SizedBox(height: 10),
                Text("By tapping Sign up, you agree to our",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.GREY2,
                  fontWeight: FontWeight.w400),),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Terms, Data Policy",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.BLUE2,
                  fontWeight: FontWeight.w400),),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 5),
                     child: Text("and",
                                     style: TextStyle(
                                       fontSize: 12,color: ColorConst.GREY2,
                                       fontWeight: FontWeight.w400),),
                   ),
                   Text("Cookies Policy",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.BLUE2,
                  fontWeight: FontWeight.w400),),
                  ],),
                  SizedBox(height: 158),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                    },
                    child: CustomButtonBar(text: "Sign UP")),
                  SizedBox(height: 20),
                  Text("Sign up without updating my contact",
                style: TextStyle(
                  fontSize: 12,color: ColorConst.BLUE2,
                  fontWeight: FontWeight.w400),),
                  SizedBox(height: 290),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("The Facebook company is now Meta. While our company name is changing, we are continuing to offer the same products, includingthe Facebook app from Meta. Our Data Policy and Terms of Service remain in effect, and this name change does not affect how we use or share data. Learn more about Meta and our vision for the metaverse.",
                    textAlign: TextAlign.center,
                    maxLines: 6,),
                  )

        ],
       ),
    );
  }
}