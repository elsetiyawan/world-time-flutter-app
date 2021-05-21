import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location = ''; //Location name from UI
  String time = ''; //Time in that location
  String flag = ''; //Flag of that location
  String url = ''; //Location url

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.https('worldtimeapi.org', '/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      time = now.toString();
    } catch (e) {
      time = "Could not get time data";
    }
  }
}
