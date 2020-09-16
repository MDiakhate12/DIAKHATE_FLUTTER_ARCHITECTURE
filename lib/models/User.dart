import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String phoneNumber;
  String username;
  String email;
  DocumentReference reference;
  String id;
  String avatar;

  User.fromSnapshot(DocumentSnapshot snapshot)
      : this.phoneNumber = snapshot.data()['phoneNumber'],
        this.username = snapshot.data()['phoneNumber'],
        this.email = snapshot.data()['phoneNumber'],
        this.id = snapshot.id,
        this.reference = snapshot.reference;
}
