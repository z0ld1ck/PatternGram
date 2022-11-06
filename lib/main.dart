import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pattern_gram/IntroScreen/IntroScreen.dart';
import 'package:pattern_gram/Pages/HomePage.dart';
import 'package:pattern_gram/Pages/Logged_in.dart';
import 'package:pattern_gram/Provider/google_sign_in.dart';
import 'package:provider/provider.dart';

import 'Auth/AuthPage.dart';
import 'DB/db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const PatternGram());
}

class PatternGram extends StatelessWidget {
  const PatternGram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create:(context)=>GoogleSignInProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoggendIn(),
      ),
    );
  }
}
