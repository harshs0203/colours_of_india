import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Text('Welcome To Order Screen'),
      FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('LogOut'),
      ),
        ],
      ),
    );
  }
}
