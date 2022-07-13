import 'package:flutter/material.dart';
import 'datamodel.dart';

class UserTile extends StatelessWidget {
  final User user;

  UserTile({required this.user});

  String userTitle() {
    String title = "";
    if (user.gender == "Male") {
      title = "Mr.";
    } else if (user.gender == "Female") {
      title = "Ms.";
    }
    return title;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
            leading: Text('${userTitle()} ${user.name} '),
            title: Text('${user.email}'),
            trailing: Text(' ${user.status} '),
          ),
          Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}
