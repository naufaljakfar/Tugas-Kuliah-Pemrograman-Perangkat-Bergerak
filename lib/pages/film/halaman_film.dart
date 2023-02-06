import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Artikel/halaman_news.dart';
import 'package:flutter_application_1/pages/halaman_utama.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../halaman about/about.dart';

class HalamanFilm extends StatefulWidget {
  @override
  State<HalamanFilm> createState() => _HalamanFilmState();
}

class _HalamanFilmState extends State<HalamanFilm> {
  fetchMovies() async {
    var url;
    url = await http.get(Uri.parse(
        "https://api.themoviedb.org/3/movie/now_playing?api_key=1500496dcaf1512b62894bd98ba83f9d&language=en-US"));
    return json.decode(url.body)['results'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(226, 169, 175, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Movies',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(fontWeight: FontWeight.bold)),
        ),
        elevation: 0,
        backgroundColor: Color.fromRGBO(226, 169, 175, 1),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 130,
              color: Colors.blueAccent,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sawangan SuperApp',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Text('silahkan pilih menu.',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          //fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HalamanUtama(),
                  ),
                );
              },
              leading: Icon(Icons.home_filled),
              title: Text(
                'Halaman utama',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              subtitle: Text(
                'Kembali ke halaman utama',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Colors.black54, fontSize: 10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HalamanFilm(),
                  ),
                );
              },
              leading: Icon(Icons.movie),
              title: Text(
                'Film terbaru',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              subtitle: Text(
                'Pilihan film terbaru untuk kalian!',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Colors.black54, fontSize: 10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HalamanBerita(),
                  ),
                );
              },
              leading: Icon(Icons.ad_units_rounded),
              title: Text(
                'Artikel seru',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              subtitle: Text(
                'Artikel seru nih buat kalian!',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Colors.black54, fontSize: 10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.account_tree_rounded),
              title: Text(
                'Visi dan Misi',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              subtitle: Text(
                'Lebih mengenal visi - misi kami',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Colors.black54, fontSize: 10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HalamanAbout()));
              },
              leading: Icon(Icons.account_circle_rounded),
              title: Text(
                'Tentang kami',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              subtitle: Text(
                'Jika ingin lebih mengenal kami',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Colors.black54, fontSize: 10),
                ),
              ),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
          future: fetchMovies(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
            if (snapshot.hasData) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                padding: EdgeInsets.all(8),
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Container(
                        height: 250,
                        alignment: Alignment.centerLeft,
                        child: Card(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Image.network(
                                "https://image.tmdb.org/t/p/w500" +
                                    snapshot.data[index]['poster_path']),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                snapshot.data[index]["original_title"],
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                snapshot.data[index]["release_date"],
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 100,
                                child: Text(
                                  snapshot.data[index]["overview"],
                                  style: TextStyle(color: Color(0xff868597)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),

      // ListView(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
      //       child: Title(
      //         color: Colors.white,
      //         child: Text(
      //           'Movies',
      //           style: GoogleFonts.poppins(
      //               textStyle:
      //                   TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      //         ),
      //       ),
      //     ),

      //   ],
      // ),
    );
  }
}
