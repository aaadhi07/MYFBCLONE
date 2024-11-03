import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/image_const.dart';

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
             Icon(Icons.more_vert)
            ],
          ),),
          SizedBox(height: 12),
          Row(children: [
            Icon(Icons.add_box_outlined)
          ],)
          ],
        )
      ),
    );
  }
}