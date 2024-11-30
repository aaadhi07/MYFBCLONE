import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/image_const.dart';
import 'package:my_clone_fb/view/dummy_db.dart';
// import 'package:my_clone_fb/view/splash_screen/splash_screen.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            first_section(),
             SizedBox(height: 20),
             storySection(),
             
          ],
        ),
      ),
    );
  }

  SingleChildScrollView storySection() {
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(
              children: List.generate(4, (index) => Stack(
                children:[ Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(DummyDb.storiesList[index]["imageUrl"]),
                    ),
                    SizedBox(height: 10),
                    Text(DummyDb.storiesList[index]["userName"])
                  ],),
                ),
                CircleAvatar(
                  child: Image.asset(DummyDb.storiesList[index]["profileUrl"]),)
        ]),),
             ),
           );
  }

  Container first_section() {
    return Container(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Container(
                      height: 60,width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConst.PROFILELOG,),
                            fit: BoxFit.cover)
                      ),),
                      SizedBox(
                        width: 230,
                        height: 34,
                        child: TextFormField(
                            style: TextStyle(
                              fontSize: 12,color: ColorConst.GREY2,
                              fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.image),
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(20,)),
                              labelText: "What's on your mind sanjay?",
                            ),),
                      ),
                      Container(decoration: BoxDecoration(
                        color: ColorConst.WHITE2,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                        child: IconButton(onPressed: () {   
                        }, icon: Icon(Icons.search)),
                      )
              ],),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                InkWell(onTap: () {},
            child: Image.asset(ImageConst.HOMEREEL)),
          Image.asset(ImageConst.HOMEROOM),
          Image.asset(ImageConst.HOMEGROUP),
          Image.asset(ImageConst.HOMELIVE),
              ],)
            ],),
          );
  }
}