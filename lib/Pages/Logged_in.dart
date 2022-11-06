import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pattern_gram/DB/db.dart';

class LoggendIn extends StatelessWidget {
  const LoggendIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Logged In'),
        centerTitle: true,
        actions: [
          TextButton(onPressed: () {}, child: const Text('Logout'))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[```
            const Text(
              'Profile',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 32),
            CircleAvatar(
              radius: 40,
              backgroundImage:NetworkImage(user.photoURL!),
            ),
            const SizedBox(height: 8),
            Text(
                'Name:'+user.displayName!,
              style: const TextStyle(color:Colors.white,fontSize:16),
            ),
            const SizedBox(height: 8),
            Text(
                'Email:'+user.email!,
              style:const TextStyle(color: Colors.white,fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
