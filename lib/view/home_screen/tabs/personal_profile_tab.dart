import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/image_const.dart';

class PersonalProfileTab extends StatefulWidget {
  const PersonalProfileTab({super.key});

  @override
  State<PersonalProfileTab> createState() => _PersonalProfileTabState();
}

class _PersonalProfileTabState extends State<PersonalProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
    ],);
  }
}
