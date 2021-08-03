import 'package:colours_of_india/services/authentication/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/logout_alert.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello, admin'),
              FlatButton(
                onPressed: () {
                  final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);

                  showDialog(context: context, builder: (BuildContext context) => LogOutAlert(provider: provider), barrierDismissible: false);

                },
                child: Text('LogOut'),
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
