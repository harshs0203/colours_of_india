import 'package:cloud_firestore/cloud_firestore.dart';

final CollectionReference plantCollection =
FirebaseFirestore.instance.collection('Travel');

Future sendingSellerInformation(
    {
      required String name,
      String? pNum,
      String? altPNum,
      required int adults,
      required int children,
      String ? location,
      dynamic departure,
      dynamic arrival
    }) async {
  return await plantCollection.doc().set({
    'personal information': {
      'Name': name,
      'phoneNumber': pNum,
      'alternate phone number' : altPNum
    },
    'adults': adults,
    'children': children,
    'location': location,
    'departure date': departure,
    'arrival date': arrival,
  });
}