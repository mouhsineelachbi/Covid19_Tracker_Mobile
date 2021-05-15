import 'package:covid19tracker/themes/constants.dart';
import 'package:flutter/material.dart';

class CardStatus extends StatelessWidget {

  final IconData iconName;
  final Color cardColor;
  final String newCases;
  final String totalCases;
  final String status;

  const CardStatus({Key key, this.cardColor, this.newCases, this.totalCases, this.status, this.iconName,}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            color: textWhite.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: cardColor.withOpacity(0.5),
                    border: Border.all(color: cardColor, width:2),
                    borderRadius: BorderRadius.circular(40/2),
                  ),
                  child: Icon(iconName, color: cardColor ,),
                ),
                SizedBox(height: 15,),
                Text("[+$newCases]", style: TextStyle(color: cardColor, fontSize: 14),),
                SizedBox(height: 15,),
                Text("$totalCases", style: TextStyle(color: cardColor, fontSize: 26, fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Text("$status", style: TextStyle(color: cardColor, fontSize: 18),),
              ],
            ),
          )
      ),
    );
  }
}
