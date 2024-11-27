import 'package:flutter/material.dart';
import 'package:my_clone_fb/utilities/color_const.dart';
import 'package:my_clone_fb/utilities/image_const.dart';
import 'package:my_clone_fb/view/dummy_db.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
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
                        SizedBox(width: 10),
                        SizedBox(width: 250,
                        height: 40,
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
                        )],
            ),
          ),
          SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            InkWell(onTap: () {
              
            },
              child: Image.asset(ImageConst.HOMEREEL)),
            Image.asset(ImageConst.HOMEROOM),
            Image.asset(ImageConst.HOMEGROUP),
            Image.asset(ImageConst.HOMELIVE),
          ],),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(DummyDb.storyList.length, (index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children:[ Container(
                        height: 135,width: 90,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(DummyDb.storyList[index]["imageUrl"]))),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 30,
                        child: CircleAvatar(radius: 14,backgroundColor: ColorConst.PRIMARYBLUE,
                          child: CircleAvatar(radius: 12,
                          backgroundImage: AssetImage(DummyDb.storyList[index]["imageUrl"]),),
                        ),
                      )
                ]),
                  ),
                 SizedBox(height: 10),
                 Text(DummyDb.storyList[index]["name"])
                ],
              ),)
            ),
          )
        ],
      ),
    );
  }
}