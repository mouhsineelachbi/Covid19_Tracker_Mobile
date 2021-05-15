import 'package:covid19tracker/pages/detail.dart';
import 'package:covid19tracker/widgets/cardstatus.dart';
import 'package:covid19tracker/widgets/charts.dart';
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
        GestureDetector(
          onTap: () {
            Navigator.push(context, (MaterialPageRoute(builder: (_) => Detail())));
          },
          child: Container(
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardStatus(iconName: Icons.flash_auto ,cardColor: warning, newCases: "200", totalCases: "7.987", status: "Active",),
            SizedBox(width: 20,),
            CardStatus(iconName: LineIcons.heart, cardColor: success, newCases: "200", totalCases: "1,109", status: "Recovered",),
            SizedBox(width: 20,),
            CardStatus(iconName: Icons.close, cardColor: primary, newCases: "200", totalCases: "335", status: "Deceased",),
          ],
        ),
        SizedBox(height: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Spread Trends", style:AppSubTitle),
            SizedBox(height: 10,),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: textWhite.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Active Cases", style: TextStyle(fontSize: 14, color: warning)),
                        Row(
                          children: [
                            Text("7,287", style: TextStyle(color: warning, fontSize: 18, fontWeight: FontWeight.bold),),
                            Text("[+28]", style: TextStyle(color: warning)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Weekly", style: TextStyle(color: textWhite),),
                        SizedBox(width: 20,),
                        Text("Monthly", style: TextStyle(color: textWhite),),
                      ],
                    ),
                    SizedBox(height:10),
                    Container(
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Container(
                            width: 47,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 2,
                            decoration: BoxDecoration(
                                color: textWhite.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(12)
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    chartWidget,
                  ],
                ),

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
