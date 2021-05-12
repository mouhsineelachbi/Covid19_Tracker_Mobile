import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:covid19tracker/themes/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  
  Widget getBody(){
    return SafeArea(child: ListView(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      children: [
        Row(
          children: [
            Padding(padding: EdgeInsets.only(top: 10,),
            child: SvgPicture.asset("assets/images/burger_icon.svg",
              width: 15,
              height: 15,
              ),
            ),
            SizedBox(width: 10,),
            Text("Covid 19 RealTime Tracker", style: AppTitle,),
          ],
        ),
        SizedBox(height: 40,),
        Container(
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Positioned(
                left: -5,
                top: 19,
                child: Container(
                  height : 100,
                  child: Image.asset("assets/images/image_1.png", fit: BoxFit.cover,),
                ),
              ),
              Positioned.fill(
                top: 10,
                left: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Take the self check up", style: AppSubTitle,),
                    SizedBox(height: 0,),
                    Text("Contains several checklist question to check your physical condition",
                    style: contentWhite),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }
}
