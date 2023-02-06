import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HalamanLupaPassword extends StatefulWidget {
  const HalamanLupaPassword({super.key});

  @override
  State<HalamanLupaPassword> createState() => _HalamanLupaPasswordState();
}

class _HalamanLupaPasswordState extends State<HalamanLupaPassword> {
  final _emailcontroller = TextEditingController();

  @override
  void dispose() {
    _emailcontroller.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailcontroller.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Password link sudah dikirim ke email kamu!'),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Email tidak tersedia'),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Masukkan Email dan kami akan mengirimkan reset password link',
                style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 11)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 20, 50, 0),
                child: TextField(
                  controller: _emailcontroller,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 20, 50, 0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        passwordReset();
                      },
                      child: Container(
                        width: 200,
                        height: 60,
                        padding: EdgeInsets.all(25),
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            'Reset Password',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
