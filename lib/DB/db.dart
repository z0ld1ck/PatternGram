import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pattern_gram/main.dart';

class User {
  late Timestamp createdAt;
  late String displayName;
  late String email;
  late String image;
  late String uid;

  User({
      required this.createdAt,
      required this.displayName,
      required this.email,
      required this.image,
      required this.uid
      });

  factory User.fromJson(DocumentSnapshot snapshot){
    return User(
      createdAt:snapshot['createdAt'],
      displayName:snapshot['displayName'],
      email:snapshot['email'],
      image:snapshot['image'],
      uid:snapshot['uid'],


    );
  }








}
