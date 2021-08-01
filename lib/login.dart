import 'package:colours_of_india/admin_login.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assests/images/logo.png'),
            SizedBox(
              height: size.height * 0.25,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Login In With Google'),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminLogin()),
                );
              },
              child: Text('I\'m an Administrator'),
            ),
          ],
        ),
      ),
    );
  }
}
