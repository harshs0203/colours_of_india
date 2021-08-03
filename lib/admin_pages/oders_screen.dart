import 'package:flutter/material.dart';

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
              // FlatButton(
              //   onPressed: () {
              //     showDialog(context: context, builder: (BuildContext context) => LogOutAlert(provider: provider), barrierDismissible: false);
              //   },
                //child: Text('LogOut'),
             // ),
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
