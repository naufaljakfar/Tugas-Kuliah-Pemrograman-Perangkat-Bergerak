import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/halaman_login.dart';
import 'package:flutter_application_1/pages/halaman_utama.dart';
import 'package:flutter_application_1/splash%20screen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
