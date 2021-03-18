import 'dart:convert';
import 'package:http/http.dart' as http;

class GetResult {
  int id;
  String name;

  GetResult({this.id, this.name});

  factory GetResult.createGetResult(Map<String, dynamic> object) {
    return GetResult(
      id: object['id'],
      name: object['first_name'] + object['last_name']
    );
  }

  static Future<GetResult> sendRequest() async {
    var result =  await http.get(Uri.https('reqres.in','/api/users/2'));
    var jsonObject = json.decode(result.body);
    var dataobject = (jsonObject as Map<String, dynamic>)['data'];
    return GetResult.createGetResult(dataobject);
  }

}
