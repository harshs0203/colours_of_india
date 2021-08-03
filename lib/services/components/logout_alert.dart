import 'package:colours_of_india/login.dart';
import 'package:flutter/material.dart';
import 'package:colours_of_india/services/authentication/google_sign_in.dart';

class LogOutAlert extends StatelessWidget {
  const LogOutAlert({
    required this.provider,
  });

  final GoogleSignInProvider provider;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Log Out',
        style: TextStyle(),
      ),
      content: Text('Are you sure you want to log out?'),
      actions: [
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'No',
          ),
        ),
        FlatButton(
            onPressed: () {
              provider.logout();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text(
              'Yes',
            )),
      ],
      elevation: 24.0,
    );
  }
}
