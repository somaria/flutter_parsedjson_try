import 'package:flutter/material.dart';
import 'Services.dart';
import 'Users.dart';

class JsonParseDemo extends StatefulWidget {
  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}

class _JsonParseDemoState extends State<JsonParseDemo> {
  List<User> _users;
  bool _loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    Services.getUsers().then((users) {
      setState(() {
        _users = users;
        _loading = false;
      });
      print(users);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? 'Loading...' : 'Users'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: _users == null ? 0 : _users.length,
          itemBuilder: (context, index) {
            User user = _users[index];
            return ListTile(
              title: Text(user.name),
              subtitle: Text(user.email),
            );
          },
        ),
      ),
    );
  }
}
