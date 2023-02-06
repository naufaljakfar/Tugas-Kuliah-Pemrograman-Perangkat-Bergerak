import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/forgotpass/halaman_forgot.dart';
import 'package:flutter_application_1/pages/Registrasi/halaman_regist.dart';
import 'package:flutter_application_1/pages/halaman_utama.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({super.key});

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  Future signIn() async {
    try {
      FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _usernamecontroller.text, password: _passwordcontroller.text);
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
  void dispose() {
    _usernamecontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),

                  //LOGO AWAL

                  const Icon(
                    Icons.lock,
                    size: 100,
                  ),

                  //BIKIN JARAK KE TEKS
                  SizedBox(
                    //child: Container(color: Colors.black,),
                    height: 30,
                  ),

                  //SELAMAT DATANG
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Text(
                      'Selamat Datang di Sawangan SuperApp',
                      style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(fontSize: 15, color: Colors.black)),
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //BUAT TEXTFIELD USENAME

                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: TextField(
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
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                    //child: Container(color: Colors.red,)
                  ),

                  //TEXTFIELD PASSWORD
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: TextField(
                      controller: _passwordcontroller,
                      //obscuringCharacter: '*',
                      obscureText: true,
                      autocorrect: false,
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
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  //LUPA PASSWORD
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        HalamanLupaPassword()));
                          }),
                          child: Text('Lupa Password?'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,

                    // LOG IN
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            //signIn()
                            FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: _usernamecontroller.text,
                                    password: _passwordcontroller.text)
                                .then(
                                  (value) => (Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HalamanUtama(),
                                    ),
                                  ).onError((error, StackTrace) {
                                    print("Error ${error.toString()}");
                                  })),
                                );
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
                                'MASUK',
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

                  SizedBox(
                    height: 50,
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

                  //LOGO GOOGLE DAN APPLE

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
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),

          //MASUK KE HALAMAN REGISTRASI

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Kamu bukan member ?'),
              TextButton(
                  onPressed: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HalamanRegist()));
                  }),
                  child: Text('Registrasi Sekarang !'))
            ],
          ),
        ],
      ),
    );
  }

  Future signin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _usernamecontroller.text, password: _passwordcontroller.text);
  }
}
