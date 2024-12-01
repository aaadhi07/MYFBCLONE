import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/global_widget/custombutton_bar.dart';
import 'package:my_clone_fb/utilities/image_const.dart';
import 'package:my_clone_fb/view/splash_screen/splash_screen.dart';

class PersonalProfileTab extends StatefulWidget {
  const PersonalProfileTab({super.key});

  @override
  State<PersonalProfileTab> createState() => _PersonalProfileTabState();
}

class _PersonalProfileTabState extends State<PersonalProfileTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
        Stack(
          clipBehavior: Clip.none,
          children:[ 
          Image.asset(ImageConst.PROFILEBG),
          Positioned(
            bottom: -50,
            left: 105,
            child: Stack(
              children:[ Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.white,
                    width: 6
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(ImageConst.PROFILEFULL,))
                ),
              ),
              Positioned(
            right: 19,
            bottom: 20,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConst.GREY3
              ),
              child: Center(child: 
              Icon(Icons.camera_alt_rounded),),
            ),
          )
          ]),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConst.GREY3
              ),
              child: Center(child: 
              Icon(Icons.camera_alt_rounded),),
            ),
          )],),
          SizedBox(height: 70),
          Text("Sanjay Shendy",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24),),
                    SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            CustomButtonBar(text: "Add to story", 
            width: 150, height: 35),
            Container(
               width: 150,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: ColorConst.GREY3
                ),
                child: Center(
                  child: Text("Edit profile",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600),),),
            ),
            IconButton(onPressed: () {}, 
            icon: Icon(Icons.more_vert))
          ],),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset(ImageConst.LOCKICON),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("You locked your profile",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600),),
                  Text("Learn more",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ColorConst.PRIMARYBLUE),)
                ],)
              ],
            ),
          ),
          SizedBox(height: 15),
          Divider(color: ColorConst.GREY1,),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            GradientText("Posts",
            gradient: LinearGradient(
              colors:[ColorConst.PRIMARYBLUE,ColorConst.BLUE2]),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold),),
              GradientText("Friends",
            gradient: LinearGradient(
              colors:[ColorConst.PRIMARYBLUE,ColorConst.BLUE2]),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold),),
              GradientText("Followers",
            gradient: LinearGradient(
              colors:[ColorConst.PRIMARYBLUE,ColorConst.BLUE2]),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold),),
              GradientText("Following",
            gradient: LinearGradient(
              colors:[ColorConst.PRIMARYBLUE,ColorConst.BLUE2]),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold),),
          ],),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:23 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              GradientText("1972",
              gradient: LinearGradient(
                colors:[ColorConst.PRIMARYBLUE,ColorConst.BLUE2]),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600),),
                GradientText("4843",
              gradient: LinearGradient(
                colors:[ColorConst.PRIMARYBLUE,ColorConst.BLUE2]),
              style: TextStyle(
                fontSize: 14,
                fontWeight:  FontWeight.w600),),
                GradientText("1990",
              gradient: LinearGradient(
                colors:[ColorConst.PRIMARYBLUE,ColorConst.BLUE2]),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600),),
                GradientText("1456",
              gradient: LinearGradient(
                colors:[ColorConst.PRIMARYBLUE,ColorConst.BLUE2]),
              style: TextStyle(
                fontSize: 14,
                fontWeight:  FontWeight.w600),),
            ],),
          ),
          SizedBox(height: 15),
          Divider(color: ColorConst.GREY1,),
          SizedBox(height: 15),
          profileDetailSection()
      ],),
    );
  }

  Padding profileDetailSection() {
    return Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(children: [
            Row(children: [
              Icon(
                Icons.shopping_basket_rounded,
                color: ColorConst.GREY1,),
                SizedBox(width: 12),
                Text("Founder and CEO at A to Z company Ltd.",
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
            ],),
            SizedBox(height: 23),
            Row(children: [
              Icon(
                Icons.school,
                color: ColorConst.GREY1,),
                SizedBox(width: 12),
                Column(
                  children: [
                    Text("Studied Computer Science at",
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                     Text("Harvard University",
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                  ],
                )
            ],),
            SizedBox(height: 23),
            Row(children: [
              Icon(
                Icons.home,
                color: ColorConst.GREY1,),
                SizedBox(width: 12),
                Text("Lives in Mumbai, Maharastra.",
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
            ],),
            SizedBox(height: 23),
            Row(children: [
              Icon(
                Icons.location_on,
                color: ColorConst.GREY1,),
                SizedBox(width: 12),
                Text("From Mumbai, India.",
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
            ],),
            SizedBox(height: 23),
            Row(children: [
              Icon(
                Icons.more_horiz,
                color: ColorConst.GREY1,),
                SizedBox(width: 12),
                Text("See your about info.",
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
            ],),
            SizedBox(height: 23),
            Container(
              height: 25,
              width: 150,
              decoration: BoxDecoration(
                color: ColorConst.GREY3,
                borderRadius: BorderRadius.circular(7)
              ),
              child: Center(
                child: Text("Edit public details",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                ),)),
            )
          ],),
        );
  }
}
