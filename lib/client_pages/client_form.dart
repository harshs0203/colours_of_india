import 'package:flutter/material.dart';

class ClientForm extends StatefulWidget {
  const ClientForm(
      {Key? key, required this.name, required this.pNum, required this.altPNum})
      : super(key: key);
  final String name;
  final String pNum;
  final String altPNum;

  @override
  _ClientFormState createState() => _ClientFormState(name, pNum, altPNum);
}

class _ClientFormState extends State<ClientForm> {
  _ClientFormState(this.name, this.pNum, this.altPNum);

  final String name;
  final String pNum;
  final String altPNum;
  String location = '';
  var numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
  var adult;
  var children;
  DateTime departureDate = DateTime.now();
  DateTime arrivalDate = DateTime.now();

  Future<void> _departureDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: departureDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != departureDate)
      setState(() {
        departureDate = picked;
      });
  }

  Future<void> _arrivalDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: arrivalDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != arrivalDate)
      setState(() {
        arrivalDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text('Number of Adults:\t'),
                DropdownButton<String>(
                  value: adult,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Color(0xff1d3c73)),
                  underline: Container(
                    height: 2,
                    color: Color(0xff1d3c73),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      adult = newValue!;
                      print(adult);
                    });
                  },
                  items: numbers.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text('Number of Children:\t'),
                DropdownButton<String>(
                  value: children,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Color(0xff1d3c73)),
                  underline: Container(
                    height: 2,
                    color: Color(0xff1d3c73),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      children = newValue!;
                      print(children);
                    });
                  },
                  items: numbers.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
            Text('Destination'),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your destination',
              ),
              onChanged: (value){
                setState(() {
                  location = value;
                });
              },
            ),
            Row(
              children: [
                Text('Departure Data'),
                SizedBox(
                  width: 20.0,
                ),
                Text("${departureDate.toLocal()}".split(' ')[0]),
                SizedBox(
                  width: 20.0,
                ),
                RaisedButton(
                  onPressed: () => _departureDate(context),
                  child: Text('Select date'),
                ),
              ],
            ),
            Row(
              children: [
                Text('Departure Data'),
                SizedBox(
                  width: 20.0,
                ),
                Text("${arrivalDate.toLocal()}".split(' ')[0]),
                SizedBox(
                  width: 20.0,
                ),
                RaisedButton(
                  onPressed: () => _arrivalDate(context),
                  child: Text('Select date'),
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                }, child: Text('Back')),
                ElevatedButton(onPressed: () {

                  setState(() {

                    print(arrivalDate);
                    print(departureDate);
                    print(location);
                  });

                }, child: Text('Submit')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
