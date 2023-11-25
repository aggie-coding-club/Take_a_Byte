import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

dynamic usdaGet(List<String> arguments, String query) async {
  var fdcSearch = 'fdc/v1/foods/search/';
  var apiKey = '8Wd9vaf4eJdizRTosIiIDPce3jOOloEfQc9aiDM1';
  var params = {
    'apiKey': apiKey,
    'query': query,
    'pageSize': '5',
    'pageNumber': '1',
    'dataType': 'Branded',
    'numberOfResultsPerPage': '5',
  };

  final url = Uri.https("api.nal.usda.gov", fdcSearch, params);

  // Await the HTTP GET response, then decode the
  // JSON data it contains.
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final jsonResponse = convert.jsonDecode(response.body);
    return jsonResponse;
  } else {
    return response.statusCode;
  }
}
/* the json that this function returns can be parsed using keys like a dict. ex: jsonResponse["foods"]  */
