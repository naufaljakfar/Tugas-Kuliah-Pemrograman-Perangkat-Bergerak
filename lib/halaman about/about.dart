import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Artikel/halaman_news.dart';
import 'package:flutter_application_1/pages/film/halaman_film.dart';
import 'package:flutter_application_1/pages/halaman_utama.dart';
import 'package:google_fonts/google_fonts.dart';

class HalamanAbout extends StatelessWidget {
  const HalamanAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Mau tau siapa kita?',
          style: GoogleFonts.poppins(
              color: Colors.black,
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 130,
              color: Colors.blueAccent,
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sawangan SuperApp',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Text('silahkan pilih menu.',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          //fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
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
              onTap: () {},
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
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    'images/profile.png',
                    width: 500,
                    height: 500,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama ',
                          style: GoogleFonts.poppins(color: Colors.black, textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        Text(
                          'Naufal',
                          style: GoogleFonts.poppins(color: Colors.black, textStyle: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'NIM ',
                          style: GoogleFonts.poppins(color: Colors.black, textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        Text(
                          '20103108',
                          style: GoogleFonts.poppins(color: Colors.black, textStyle: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'images/wulida.png',
                    width: 500,
                    height: 500,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama ',
                          style: GoogleFonts.poppins(color: Colors.black, textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        Text(
                          'Wulida',
                          style: GoogleFonts.poppins(color: Colors.black, textStyle: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'NIM ',
                          style: GoogleFonts.poppins(color: Colors.black, textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        Text(
                          '20103085',
                          style: GoogleFonts.poppins(color: Colors.black, textStyle: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
