import 'package:http/http.dart' as http;

class HttpHelper {
  String authority = 'api.openweathermap.org';
  /* String path = '/data/3.0/onecall/day_summary'; */
  String path = '/data/2.5/weather';
  String apiId = '258d017c90089ae9bd22253fa199cf16';

  Future<String> fetchData(String latitude, String longitude) async {
    Map<String, dynamic> parameters = {
      'lat': latitude,
      'lon': longitude,
      /* 'date': date, */
      'appid': apiId,
    };

    Uri uri = Uri.https(authority, path, parameters);
    print(uri.toString());

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      print(response.body);
      return response.body;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
