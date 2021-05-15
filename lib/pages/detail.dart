import 'package:covid19tracker/themes/constants.dart';
import 'package:flutter/material.dart';


class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
    );
  }

  getBody() {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(Icons.arrow_back_ios, color: bgColor,),
              ),
            ),
            Container(
              height: screenSize.height,
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Self check up \nfor COVID19", style: AppTitle,),
                          Image.asset("assets/images/image_2.png"),
                        ],
                      ),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            SizedBox(height: 100,),
                            Row(
                              children: [
                                Container(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 4,
                                        decoration: BoxDecoration(
                                            color: textWhite,
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                      ),
                                      Container(
                                        width: screenSize.width-120,
                                        height: 4,
                                        decoration: BoxDecoration(
                                            color: textWhite.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text("1/10",
                                    style: TextStyle(
                                      color: textWhite,
                                    )
                                ),
                              ],
                            ),
                            SizedBox(height: 42,),
                            Text("Have you experienced\nany other following\nsymptomps:", style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: textWhite,
                                height: 1.6
                              ),
                            ),
                            SizedBox(height: 40,),
                            Text(
                                "Fever, Cough, Sneezing,\nSor Throat, Difficult in Breasthing",
                                style: TextStyle(
                                  color: textWhite,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1.6
                                ),
                            ),
                            SizedBox(height: 40,),
                            Container(
                              width: (screenSize.width / 2) - 120,
                              child: FlatButton(
                                onPressed: (){},
                                child: Text("Yes"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
