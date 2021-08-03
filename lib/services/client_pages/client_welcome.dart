import 'package:colours_of_india/services/authentication/google_sign_in.dart';
import 'package:colours_of_india/services/client_pages/client_form.dart';
import 'package:colours_of_india/services/components/logout_alert.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClientWelcome extends StatefulWidget {
  const ClientWelcome({Key? key}) : super(key: key);

  @override
  _ClientWelcomeState createState() => _ClientWelcomeState();
}

class _ClientWelcomeState extends State<ClientWelcome> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String phoneNumber = '';
  String altPhoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40.0
        ),
        child: ListView(
          children: [
            Text('Hello, you need to fill the form below and we will get back to you as soon as possible.'),
            Form(child: Column(
              children: [
                Text('Name'),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    name = value;
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                Text('Phone Number'),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }else if(value.length != 10){
                      return 'Please enter a valid phone number';
                    }
                    phoneNumber = value;
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                Text('Alternative Phone Number'),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }else if(value.length != 10){
                      return 'Please enter a valid phone number';
                    }
                    altPhoneNumber = value;
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),),
            ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){

                print(name);
                print(phoneNumber);
                print(altPhoneNumber);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ClientForm(),
                  ),
                );
              }
            }, child: Text('Next')),
            ElevatedButton(onPressed: (){
              final provider =
              Provider.of<GoogleSignInProvider>(context, listen: false);

              showDialog(context: context, builder: (BuildContext context) => LogOutAlert(provider: provider), barrierDismissible: false);
            }, child: Text('Log Out')),
          ],
        ),
      )
    );
  }
}
