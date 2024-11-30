import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/global_widget/custombutton_bar.dart';

class FriendReqTab extends StatefulWidget {
  const FriendReqTab({super.key});

  @override
  State<FriendReqTab> createState() => _FriendReqTabState();
}

class _FriendReqTabState extends State<FriendReqTab> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Friends",style: TextStyle(
            fontSize: 24,fontWeight: FontWeight.bold
          ),),
          IconButton(
            onPressed: () {},
           icon: Icon(Icons.search,
           size: 24,
           color: Colors.black,))
        ],),
      ),
      SizedBox(height: 21),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: CustomButtonBar(
                text: "Suggestions",
                height:34 ,width: 110,)),
            SizedBox(width: 27),
            InkWell(
              onTap: () {},
              child: CustomButtonBar(
                text: "Your Friends",
                height:34 ,width: 110,)),
          ],
        ),
      ),
      SizedBox(height: 20),
      Divider(color: ColorConst.GREY1,height: 0.5,),
      SizedBox(height: 15),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
          Text("Friend request",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold),),
            SizedBox(width: 10),
            Text("440",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,color: Colors.redAccent),),
            SizedBox(width: 145),
            Text("See All",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,color: ColorConst.BLUE2),),
        ],),
      )
    ],);
  }
}