import 'package:colours_of_india/login.dart';
import 'package:flutter/material.dart';

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
