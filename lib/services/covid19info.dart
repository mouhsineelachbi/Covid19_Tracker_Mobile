import 'dart:convert';
import 'package:http/http.dart';

class Covid19Info {
  String NewConfirmed;
  String TotalConfirmed;
  String NewRecovered;
  String TotalRecovered;
  String NewDeaths;
  String TotalDeaths;

  Covid19Info({this.NewConfirmed, this.TotalConfirmed, this.NewRecovered, this.TotalRecovered, this.NewDeaths, this.TotalDeaths});

  getInfo() async {

    try {
      Response response = await get("https://api.covid19api.com/summary");
      Map data = jsonDecode(response.body)['Global'];

      // Get properties from Data
      NewConfirmed = data["NewConfirmed"];
      TotalConfirmed = data["TotalConfirmed"];
      NewRecovered = data["NewRecovered"];
      TotalRecovered = data["TotalRecovered"];
      NewDeaths = data["NewDeaths"];
      TotalDeaths = data["TotalDeaths"];

      return data;
    }catch(error){
      print(error);
    }

  }


}