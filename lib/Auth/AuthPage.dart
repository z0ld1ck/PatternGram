import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pattern_gram/Pages/HomePage.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFF37C0C0),
              Color(0xFFA67FE9),
              Color(0xFF3FC2C2),
            ],
          ),
        ),
        child: Stack(
          children: [
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            Center(
              child: Image.asset(
                'assets/images/logo2.png',
                width: size.width,
                // height: size.height,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600, left: 70),
              child: Container(
                width: 270,
                height: 60,
                // color:Colors.black,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF547FED),
                    onPrimary: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  icon: const FaIcon(
                    FontAwesomeIcons.googlePlus,
                    color: Colors.white,
                    size: 50,
                  ),
                  label: const Text(
                    'Sign in with Google',
                    style: TextStyle(
                      fontFamily: 'Monsterrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
