import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/image_const.dart';
import 'package:my_clone_fb/view/joinfb_screen/joinfb_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset(ImageConst.MAINLOGO,
        height: 70,width: 50,),
        SizedBox(height: 81),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 39),
          child: Row(
            children: [
             Container(
              height: 60,width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(ImageConst.PROFILELOG))
              ),
             ),
             SizedBox(width: 16),
             Text("Sanjay Shendy",
             style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ColorConst.BLACK
             ),),
             SizedBox(width: 90),
             Icon(Icons.more_vert,
             weight: 30,
             color: ColorConst.BLACK,
             size: 25),
            ],
          ),),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(children: [
              Icon(Icons.add_box_outlined,
              size: 50,color: ColorConst.PRIMARYBLUE,),
              SizedBox(width: 16),
              Text("Log Into Another Account",
              style: TextStyle(color: ColorConst.PRIMARYBLUE,
              fontSize: 12,fontWeight: FontWeight.w500),),
              SizedBox(height:10)
            ],),),
            SizedBox(height: 19),
            Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(children: [
              Icon(Icons.search,
              size: 50,color: ColorConst.PRIMARYBLUE,),
              SizedBox(width: 16),
              Text("Find Your Account",
              style: TextStyle(color: ColorConst.PRIMARYBLUE,
              fontSize: 12,fontWeight: FontWeight.w500),),
              SizedBox(height:10)
            ],),),
            SizedBox(height: 207),
            InkWell(
              onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => JoinfbScreen(),));
              }, 
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: ColorConst.PRIMARYBLUE,
                  borderRadius: BorderRadius.circular(15),
                  ),
                child: Center(
                  child: Text("Create New Facebook Account",
                  style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: ColorConst.WHITE) ,),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}