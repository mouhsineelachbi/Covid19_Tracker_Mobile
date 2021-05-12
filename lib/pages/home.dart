import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:covid19tracker/themes/constants.dart';
import 'package:line_icons/line_icons.dart';

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
        SizedBox(height: 30,),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Transmission Update", style: AppSubTitle),
                SizedBox(height: 4,),
                Text("Latest update : 12 May 20201", style: contentWhite,),
              ],
            ),
            GestureDetector(
              onTap: (){ // Todo : Refresh from the API
                          },
                child: Icon(Icons.refresh,
                  color: textWhite,
                ),
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: textWhite.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    width: 1,
                    height: 30,
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.3),
                      border: Border.all(color: primary, width:2),
                      borderRadius: BorderRadius.circular(40/2),
                    ),
                    child: Icon(Icons.flash_auto, color: primary ,),
                  ),
                )
              ),
            ),
          ],
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
