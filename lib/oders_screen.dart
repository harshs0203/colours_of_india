import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text('Hello, admin'),
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('LogOut'),
                  ),
                ],
              ),
              Text('Enquiry Tokens'),
              ListView(
                children: [
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
