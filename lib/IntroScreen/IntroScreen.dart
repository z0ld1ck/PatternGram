import 'package:flutter/material.dart';
import 'package:pattern_gram/Auth/AuthPage.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
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
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: size.width,
                  // height: size.height,
                ),
              ),
           ] ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 6),
                      blurRadius: 10,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
                // ignore: deprecated_member_use
                 child: RaisedButton(
                  color: const Color(0xFFFBF4FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const Auth()));
                  },
                  child: const Text(
                    'Start messaging',
                    style: TextStyle(
                      color:Color(0xFF053C57),
                      fontSize: 20,
                      fontFamily:"Monsterrat",
                      fontWeight: FontWeight.w600,
                    ),
                    // maxLines: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
