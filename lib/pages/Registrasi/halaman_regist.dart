import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/halaman_login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

class HalamanRegist extends StatefulWidget {
  const HalamanRegist({super.key});

  @override
  State<HalamanRegist> createState() => _HalamanRegistState();
}

class _HalamanRegistState extends State<HalamanRegist> {
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _namanamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SIGN UP

                Text(
                  'SIGN UP',
                  style: GoogleFonts.poppins(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: 30,
                ),

                //NAMA

                Text(
                  'Nama',
                  style: GoogleFonts.poppins(color: Colors.black),
                ),

                SizedBox(
                  height: 1,
                ),

                TextField(
                  controller: _namanamecontroller,
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
                      //hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),

                SizedBox(
                  height: 30,
                ),

                //ISI FILL USERNAME

                Text(
                  'Email',
                  style: GoogleFonts.poppins(color: Colors.black),
                ),

                SizedBox(
                  height: 1,
                ),

                TextField(
                  controller: _usernamecontroller,
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
                      //hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),

                SizedBox(
                  height: 30,
                ),

                //ISI FILL PASSWORD

                Text(
                  'Password',
                  style: GoogleFonts.poppins(color: Colors.black),
                ),

                SizedBox(
                  height: 1,
                ),

                TextField(
                  controller: _passwordcontroller,
                  obscureText: true,
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
                      //hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),

                SizedBox(
                  height: 0,
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      signup();
                    },
                    child: Container(
                      padding: EdgeInsets.all(25),
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          //TULISAN

          Padding(
            padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    'Atau masuk dengan',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Ink.image(
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                    image: AssetImage('images/google.png'),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.white,
                  child: Ink.image(
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                    image: AssetImage('images/apple.png'),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
          ),

          //MASUK KE HALAMAN REGISTRASI

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sudah punya akun ?'),
              TextButton(
                  onPressed: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HalamanLogin()));
                  }),
                  child: Text('Login'))
            ],
          ),
        ],
      ),
    );
  }

  Future signup() async {
    await Firebase.initializeApp();
    Navigator.push(context, MaterialPageRoute(builder: (context)=> HalamanLogin()));

    {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _usernamecontroller.text,
        password: _passwordcontroller.text,
      );
    }
  }
}
