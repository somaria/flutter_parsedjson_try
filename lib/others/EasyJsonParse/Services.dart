import 'package:http/http.dart' as http;

import 'Users.dart';

class Services {
  static const String url = 'https://jsonplaceholder.typicode.com/users';

  static Future<List<User>> getUsers() async {
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<User> users = userFromJson(response.body);
        return users;
      } else {
        return List<User>();
      }
    } catch (e) {
      return List<User>();
    }
  }
}
