import 'package:covid19tracker/themes/constants.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:connectivity/connectivity.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getBody(context);
  }


  Widget getBody(context)
  {
    double width  = MediaQuery.of(context).size.width;
    bool loading = true;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      //child: CircularProgressIndicator(
                      //  valueColor: new AlwaysStoppedAnimation<Color>(
                       //     Colors.green),
                      //),
                    ),
                    SizedBox(
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children : [
                          SizedBox(
                              width: loading ? 90 : 0,
                              height: loading ? 40 : 0,
                            child: Text("Loading...", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: textWhite),),
                          ),
                          SizedBox(height: 20,),
                          SpinKitChasingDots(
                            color: Colors.green,
                            size: 100.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  check_Con() async {
    var result = await Connectivity().checkConnectivity();
    if(result == ConnectivityResult.none){

    }
  }
}
