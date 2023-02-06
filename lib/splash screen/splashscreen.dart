import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_application_1/pages/halaman_login.dart';
import 'package:flutter_application_1/pages/halaman_utama.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => StreamBuilder<User?>(
                  stream: FirebaseAuth.instance.authStateChanges(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return HalamanUtama();
                    } else {
                      return HalamanLogin();
                    }
                  })));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/Bean.gif',
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'LOADING',
              style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
