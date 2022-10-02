import 'dart:convert';
import 'package:http/http.dart';

class AirtableApiServices {
  final String apiUrl =
      "https://api.airtable.com/v0/appJekLjTTEi54qov/Table%201?api_key=keyOqo6abUtCx4Dn9";

  AirtableApiServices();
  Future fetchAirtableData() async {
    Response response = await get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      String apiData = response.body;
      return jsonDecode(apiData);
    } else {
      print(response.statusCode);
    }
  }

  Future updateToClaimed(String dateTime) async {
    Response response = await patch(Uri.parse(apiUrl),
        body: jsonEncode({
          "records": [
            {
              "id": "recsTnbfWtl00EiFo",
              "fields": {"claimed": 1, "date": dateTime}
            }
          ]
        }),
        headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      String apiData = response.body;
      return jsonDecode(apiData);
    } else {
      print(response.statusCode);
    }
  }

  Future updatePoints(int points) async {
    Response response = await patch(Uri.parse(apiUrl),
        body: jsonEncode({
          "records": [
            {
              "id": "recsTnbfWtl00EiFo",
              "fields": {
                "rewardcoins": points,
              }
            }
          ]
        }),
        headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      String apiData = response.body;
      return jsonDecode(apiData);
    } else {
      print(response.statusCode);
    }
  }

  Future updateFunds(int funds) async {
    Response response = await patch(Uri.parse(apiUrl),
        body: jsonEncode({
          "records": [
            {
              "id": "recsTnbfWtl00EiFo",
              "fields": {
                "funds": funds,
              }
            }
          ]
        }),
        headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      String apiData = response.body;
      return jsonDecode(apiData);
    } else {
      print(response.statusCode);
    }
  }

  Future updateInstagram(int instagram) async {
    Response response = await patch(Uri.parse(apiUrl),
        body: jsonEncode({
          "records": [
            {
              "id": "recsTnbfWtl00EiFo",
              "fields": {
                "instagram": instagram,
              }
            }
          ]
        }),
        headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      String apiData = response.body;
      return jsonDecode(apiData);
    } else {
      print(response.statusCode);
    }
  }

  Future updateWhatsapp(int whatsapp) async {
    Response response = await patch(Uri.parse(apiUrl),
        body: jsonEncode({
          "records": [
            {
              "id": "recsTnbfWtl00EiFo",
              "fields": {
                "whatsapp": whatsapp,
              }
            }
          ]
        }),
        headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      String apiData = response.body;
      return jsonDecode(apiData);
    } else {
      print(response.statusCode);
    }
  }

  Future updateChrome(int chrome) async {
    Response response = await patch(Uri.parse(apiUrl),
        body: jsonEncode({
          "records": [
            {
              "id": "recsTnbfWtl00EiFo",
              "fields": {
                "chrome": chrome,
              }
            }
          ]
        }),
        headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      String apiData = response.body;
      return jsonDecode(apiData);
    } else {
      print(response.statusCode);
    }
  }

  Future updateYoutube(int youtube) async {
    Response response = await patch(Uri.parse(apiUrl),
        body: jsonEncode({
          "records": [
            {
              "id": "recsTnbfWtl00EiFo",
              "fields": {
                "youtube": youtube,
              }
            }
          ]
        }),
        headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      String apiData = response.body;
      return jsonDecode(apiData);
    } else {
      print(response.statusCode);
    }
  }

  Future updateUsage(int usage) async {
    Response response = await patch(Uri.parse(apiUrl),
        body: jsonEncode({
          "records": [
            {
              "id": "recsTnbfWtl00EiFo",
              "fields": {
                "totalusage": usage,
              }
            }
          ]
        }),
        headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      String apiData = response.body;
      return jsonDecode(apiData);
    } else {
      print(response.statusCode);
    }
  }
}
