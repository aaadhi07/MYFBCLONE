import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/image_const.dart';
import 'package:my_clone_fb/view/home_screen/tabs/friend_req_tab.dart';
import 'package:my_clone_fb/view/home_screen/tabs/home_tab.dart';
import 'package:my_clone_fb/view/home_screen/tabs/menu_tab.dart';
import 'package:my_clone_fb/view/home_screen/tabs/notification_tab.dart';
import 'package:my_clone_fb/view/home_screen/tabs/personal_profile_tab.dart';
import 'package:my_clone_fb/view/home_screen/tabs/watch_vedio_tab.dart';
import 'package:my_clone_fb/view/splash_screen/splash_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
          body: SafeArea(
            child: Expanded(
              // flex: ,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GradientText("Facebook", 
                          gradient: LinearGradient(
                            colors: [ColorConst.PRIMARYBLUE,ColorConst.BLUE2]), 
                            style: GoogleFonts.raleway(fontSize: 20,fontWeight: FontWeight.bold)),
                            Image.asset(ImageConst.messenger)
                      ],),),
                      TabBar(
                        isScrollable: false,
                        labelColor: ColorConst.PRIMARYBLUE,
                        //  controller: _tabController,
                        tabs: [
                        Tab(icon: Icon(Icons.home_outlined),),
                        Tab(icon: Icon(Icons.people_alt_outlined),),
                        Tab(icon: Icon(Icons.person_outline),),
                        Tab(icon: Icon(Icons.photo_camera_front),),
                        Tab(icon: Icon(Icons.notifications_none),),
                        Tab(icon: Icon(Icons.menu),)
                      ]),
                      SizedBox(height: 17),
                      SizedBox(
                        height: 600,
                        child: TabBarView(
                          physics: ScrollPhysics(),
                          children: [
                          HomeTab(),
                          FriendReqTab(),
                          PersonalProfileTab(),
                          WatchVedioTab(),
                          NotificationTab(),
                          MenuTab()
                        ]),
                      )
                ],),
              ),
            ),
          ),
      ),
    );
  }
}