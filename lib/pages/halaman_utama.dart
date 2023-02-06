import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer/drawer.dart';
import 'package:flutter_application_1/halaman%20CRUD/halaman_crud.dart';
import 'package:flutter_application_1/halaman%20CRUD/lihat_data.dart';
import 'package:flutter_application_1/minigames/minigames.dart';
import 'package:flutter_application_1/pages/film/halaman_film.dart';
import 'package:flutter_application_1/pages/halaman_login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HalamanUtama extends StatefulWidget {
  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  final List<String> imagelist = [
    "https://lelogama.go-jek.com/post_thumbnail/promo-bestoran-januari-2023.jpg",
    "https://www.ruangguru.com/hs-fs/hubfs/Ruangguru%20x%20Okky%20Jelly_Landing%20Page%20Banner%20Mobile.jpg?width=721&height=317&name=Ruangguru%20x%20Okky%20Jelly_Landing%20Page%20Banner%20Mobile.jpg",
    "https://cdn-2.tstatic.net/tribunnews/foto/bank/images/promo-imlek-minuman.jpg",
    "https://akcdn.detik.net.id/community/media/visual/2022/10/22/promo-trans-snow-bekasi_43.jpeg?w=250&q=",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),

      //DRAWER

      drawer: drawer(),

      //HALAMAN UTAMA

      body: ListView(
        children: [
          //Icon(Icons.abc),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Selamat',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87)),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Datang!',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87)),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black87,
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(2, 2)),
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: Text(
                                'Promo Online shop',
                                style: GoogleFonts.poppins(
                                    textStyle:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ),
                            CarouselSlider(
                              options: CarouselOptions(
                                enlargeCenterPage: true,
                                enableInfiniteScroll: false,
                                autoPlay: true,
                              ),
                              items: imagelist
                                  .map((e) => ClipRect(
                                        child: Stack(
                                          fit: StackFit.expand,
                                          children: <Widget>[
                                            Image.network(
                                              e,
                                              width: 100,
                                              height: 100,
                                              //fit: BoxFit.cover,
                                            )
                                          ],
                                        ),
                                      ))
                                  .toList(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            // height: 100,
                            width: 100,
                            child: Container(
                              //color: Colors.black,
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TicTacToe()));
                                    },
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset('images/tictac.png'),
                                          Text(
                                            'Mini Games',
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white, elevation: 0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Container(
                              //color: Colors.black,
                              child: Container(
                                //color: Colors.black,
                                child: Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Form_Data()));
                                      },
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.network(
                                                "https://icons.veryicon.com/png/o/education-technology/onemind/input-data-1.png"),
                                            Text(
                                              'Input Data',
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.black)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white, elevation: 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            // height: 100,
                            width: 100,
                            child: Container(
                              //color: Colors.black,
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Lihat_form()));
                                    },
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.network(
                                              'https://cdn-icons-png.flaticon.com/512/5039/5039041.png'),
                                          Text(
                                            'Lihat Data',
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white, elevation: 0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Container(
                              //color: Colors.black,
                              child: Container(
                                  //color: Colors.black,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                        child: GestureDetector(
                          onTap: () {
                            FirebaseAuth.instance.signOut().then(
                                  (value) => (Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HalamanLogin(),
                                    ),
                                  )),
                                );
                          },
                          child: Container(
                            width: 200,
                            padding: EdgeInsets.all(25),
                            margin: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                'LOG OUT',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
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
        ],
      ),
    );
  }
}
