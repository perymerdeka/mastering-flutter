import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResult {
  final String? id;
  final String? name;
  final String? job;
  final String? created;

  // constructor
  PostResult({this.id, this.name, this.job, this.created});

  // factory function
  factory PostResult.createPostResult(Map<String, dynamic> jsonObject) {
    return PostResult(
        id: jsonObject['id'],
        name: jsonObject['name'],
        job: jsonObject['job'],
        created: jsonObject['createdAt']);
  }

  // connect to API method
  static Future<PostResult>connectToAPI(String? name, String? job) async {
    // api URL
    var apiUrl = Uri.parse("https://reqres.in/api/users");

    // api request to get response
    var apiResult = await http.post(apiUrl, body: {"name": name, "job": job});

    // get json data
    var jsonObjectDecode = json.decode(apiResult.body);

    // return json Object Post Result
    return PostResult.createPostResult(jsonObjectDecode);
  }
}
