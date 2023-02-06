import 'package:flutter/material.dart';
import 'package:flutter_application_1/halaman%20about/about.dart';
import 'package:flutter_application_1/pages/Artikel/halaman_news.dart';
import 'package:flutter_application_1/pages/film/halaman_film.dart';
import 'package:flutter_application_1/pages/halaman_utama.dart';
import 'package:flutter_application_1/pages/visimisi.dart';
import 'package:google_fonts/google_fonts.dart';

class drawer extends StatelessWidget {
  const drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VisiMisi()));
            },
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
    );
  }
}
