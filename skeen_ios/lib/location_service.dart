
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class LocationService{
  final String key = 'AIzaSyANj9I2U1rIgCuvWgOVnJCxT4iswX2XyrY';

  Future<String> getPlaceId(String input) async {
    
    final String url = 'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$key';
    
    

    var response = await http.get(Uri.parse(url));

    var json = convert.jsonDecode(response.body);

    var placeId = json['candidates'][0]['place_id'] as String;
    

    print(placeId);
    return placeId;
  }
  Future<Map<String,dynamic>> getPlace(String input) async {
    final placeId = await  getPlaceId(input);
    final String url = 
    'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$key';
    //final String url = 'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?keyword=$input&location=8.026808%98.337384&radius=3500&type=hostpital&key=$key';

    var response = await http.get(Uri.parse(url));

    var json = convert.jsonDecode(response.body);
    var result = json['result'] as Map<String, dynamic>;

    print(result);
    return result;
  }
}