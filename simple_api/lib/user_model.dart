import 'dart:convert';

import 'package:http/http.dart' as http;

class UserModel {
  final String? id;
  final String? name;

  // constructor
  UserModel({this.id, this.name});

  // factory method
  factory UserModel.createUser(Map<String, dynamic> object) {
    return UserModel(
        id: object['id'].toString(),
        name: object['first_name'] + ' ' + object['last_name']);
  }

  // get json object and store to model method
  static Future<UserModel> connectToAPI(String id) async {
    // API URL
    String apiURL = "https://reqres.in/api/users/" + id;
    var getResult = await http.get(Uri.parse(apiURL));
    var jsonObject = json.decode(getResult.body);

    // casting `data` value
    var getUserData = (jsonObject as Map<String, dynamic>)['data'];

    // return value
    return UserModel.createUser(getUserData);
  }

  // method for get List of Users
  static Future<List<UserModel>> getUsers(String page) async {
    String apiUrl = "https://reqres.in/api/users?page=" + page;
    var getApiResult = await http.get(Uri.parse(apiUrl));
    var jsonObject = json.decode(getApiResult.body);

    // casting map on data
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    // getting list of users
    List<UserModel> users = [];
    for (int i = 0; i < listUser.length; i++)
      users.add(UserModel.createUser(listUser[i]));
    return users;
  }
}
