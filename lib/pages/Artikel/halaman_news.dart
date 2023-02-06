import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/halaman%20about/about.dart';
import 'package:flutter_application_1/pages/film/halaman_film.dart';
import 'package:flutter_application_1/pages/halaman_utama.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanBerita extends StatelessWidget {
  const HalamanBerita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Cari berita seru',
          style: GoogleFonts.poppins(
              textStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
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
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 30, 0),
              child: Text(
                'Eksplor berita terkini dengan sekali klik',
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 5),
              child: Image.network(
                  'https://akcdn.detik.net.id/community/media/visual/2021/11/04/gempa-terkini-ambon-berikut-4-info-terbarunya_169.jpeg?w=700&q=90'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                12,
                0,
                12,
                5,
              ),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Bandung Diguncang 2 Kali Gempa Sabtu Dini Hari',
                    style: TextStyle(color: Colors.blue, fontSize: 10),
                    recognizer: TapGestureRecognizer()
                      ..onTap = (() {
                        launch(
                            'https://news.detik.com/berita/d-6538646/bandung-diguncang-2-kali-gempa-sabtu-dini-hari');
                      }))
              ])),
              // Text(
              //   'Bandung Diguncang 2 Kali Gempa Sabtu Dini Hari',
              //   style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10)),
              // ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 5),
                  child: Text(
                    'Artikel lainnya',
                    style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: TextButton(
                    onPressed: (() {}),
                    child: Text('Lihat lainnya'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 130,
                        alignment: Alignment.centerLeft,
                        child: Card(
                          child: Image.network(
                            'https://akcdn.detik.net.id/community/media/visual/2023/01/27/kota-yang-hilang_169.jpeg?w=700&q=90',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.fromLTRB(3, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 0, 5),
                              child: Text(
                                "Wujud 'kota yang hilang' di Dalam Atlantik",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  color: Colors.white,
                                )),
                              ),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 12, 0, 0),
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: 'Baca selengkapnya',
                                    style: TextStyle(color: Colors.blue),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = (() {
                                        launch(
                                            'https://inet.detik.com/science/d-6538327/wujud-kota-yang-hilang-di-samudra-dalam-atlantik');
                                      }))
                              ])),
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 130,
                        alignment: Alignment.centerLeft,
                        child: Card(
                          child: Image.network(
                            'https://akcdn.detik.net.id/community/media/visual/2023/01/27/1246538309_169.jpeg?w=700&q=90',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(3, 0, 10, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 5),
                                child: Text(
                                  "Astronaut Arab akan ke Antariksa saat Ramadhan.",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 12, 0, 0),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Baca selengkapnya',
                                      style: TextStyle(color: Colors.blue),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = (() {
                                          launch(
                                              'https://inet.detik.com/science/d-6538308/astronaut-arab-akan-ke-antariksa-saat-ramadan-puasanya-gimana');
                                        }))
                                ])),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 130,
                        alignment: Alignment.centerLeft,
                        child: Card(
                          child: Image.network(
                            'https://akcdn.detik.net.id/community/media/visual/2023/01/27/fans-the-last-of-us-hbo-wajib-coba-10-game-android-tema-zombie-ini-8_169.webp?w=750&q=90',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(3, 0, 10, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 5),
                                child: Text(
                                  "Fans The Last Of Us, Wajib Main Game Ini!",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 12, 0, 0),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Baca selengkapnya',
                                      style: TextStyle(color: Colors.blue),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = (() {
                                          launch(
                                              'https://inet.detik.com/fotoinet/d-6538296/fans-the-last-of-us-hbo-wajib-coba-10-game-android-tema-zombie-ini/2');
                                        }))
                                ])),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 130,
                        alignment: Alignment.centerLeft,
                        child: Card(
                          child: Image.network(
                            'https://akcdn.detik.net.id/community/media/visual/2021/10/20/beberapa-asteroid-diameter-sekitar-160-meter-lebih-besar-dari-piramida-giza-melintas-bumi-oktober-dan-november_169.jpeg?w=700&q=90',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(3, 0, 10, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 5),
                                child: Text(
                                  "Asteroid Sebesar Bus Pepet Bumi!",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 12, 0, 0),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Baca selengkapnya',
                                      style: TextStyle(color: Colors.blue),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = (() {
                                          launch(
                                              'https://inet.detik.com/science/d-6537932/asteroid-sebesar-bus-pepet-bumi-jaraknya-lebih-dekat-dari-satelit');
                                        }))
                                ])),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 130,
                        alignment: Alignment.centerLeft,
                        child: Card(
                          child: Image.network(
                            'https://akcdn.detik.net.id/community/media/visual/2023/01/27/fenomena-langit-1.png?w=700&q=90',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(3, 0, 10, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 5),
                                child: Text(
                                  "Aneh, Langit Hawaii Seperti Pusaran Air",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 12, 0, 0),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Baca selengkapnya',
                                      style: TextStyle(color: Colors.blue),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = (() {
                                          launch(
                                              'https://inet.detik.com/science/d-6538293/aneh-langit-hawaii-tampilkan-cahaya-seperti-pusaran-air');
                                        }))
                                ])),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 130,
                        alignment: Alignment.centerLeft,
                        child: Card(
                          child: Image.network(
                            'https://akcdn.detik.net.id/community/media/visual/2021/09/01/windows-11_169.jpeg?w=700&q=90',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(3, 0, 10, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 5),
                                child: Text(
                                  "File Explorer Windows 11 Mau Diubah",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 12, 0, 0),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Baca selengkapnya',
                                      style: TextStyle(color: Colors.blue),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = (() {
                                          launch(
                                              'https://inet.detik.com/consumer/d-6537880/file-explorer-windows-11-mau-dirombak-jadi-seperti-apa');
                                        }))
                                ])),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
