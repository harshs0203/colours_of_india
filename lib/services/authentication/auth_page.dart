import 'package:colours_of_india/login.dart';
import 'package:colours_of_india/oders_screen.dart';
import 'package:colours_of_india/services/authentication/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            final provider = Provider.of<GoogleSignInProvider>(context);
            if (provider.isSigningIn) {
              return buildLoading();
            } else if (snapshot.hasData) {
              return OrdersScreen();
            } else {
              return LoginScreen();
            }
          }),
    );
  }

  Widget buildLoading() => Scaffold(
    body: Container(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    ),
  );
}