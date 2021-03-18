import 'dart:convert';
import 'package:http/http.dart' as http;

class GetResult {
  String id;
  String name;

  GetResult({this.id, this.name});

  factory GetResult.createGetResult(Map<String, dynamic> object) {
    return GetResult(
        id: object['id'].toString(), name: object['first_name'] + object['last_name']);
  }

  static Future<GetResult> sendRequest() async {
    var result = await http.get(Uri.https('reqres.in', '/api/users/2'));
    var jsonObject = json.decode(result.body);
    var dataobject = (jsonObject as Map<String, dynamic>)['data'];
    return GetResult.createGetResult(dataobject);
  }

  static Future<List<GetResult>> getUsers(String page) async {
    var result =
        await http.get(Uri.https('reqres.in', '/api/users', {'page': page}));
    var jsonObject = json.decode(result.body);
    List<dynamic> dataobject = (jsonObject as Map<String, dynamic>)['data'];
    List<GetResult> users = [];
    for (var i = 0; i < dataobject.length; i++) {
      users.add(GetResult.createGetResult(dataobject[i]));
    }
    return users;
  }
}
