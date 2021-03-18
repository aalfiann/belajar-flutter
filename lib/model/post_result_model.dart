import 'dart:convert';
import 'package:http/http.dart' as http;

class PostResult {
  String id;
  String name;
  String job;
  String created;

  PostResult({this.id, this.name, this.job, this.created});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt']
    );
  }

  static Future<PostResult> sendRequest(String name, String job) async {
    var result =  await http.post(Uri.https('reqres.in','/api/users'), body: {
      "name": name,
      "job": job
    });
    var jsonObject = json.decode(result.body);
    return PostResult.createPostResult(jsonObject);
  }

}
