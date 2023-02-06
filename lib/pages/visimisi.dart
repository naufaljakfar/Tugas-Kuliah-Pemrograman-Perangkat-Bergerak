import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/halaman_utama.dart';
import 'package:google_fonts/google_fonts.dart';

class VisiMisi extends StatelessWidget {
  const VisiMisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Visi dan Misi',
          style: GoogleFonts.poppins(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HalamanUtama(),
                  ));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Visi Misi',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'Sawangan SuperApp',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bersama kita selangkah lebih baik maju mewujudkan Superapp yang maju, Makmur, Sejahtera!",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(fontSize: 14)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(),
                        SizedBox(height: 30),
                        Text(
                          '1. Meningkatkan kinerja aparatur pemerintah yang profesional.',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(fontSize: 14)),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '2. Meningkatkan Kualitas penyelenggara yang bersih.',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(fontSize: 14)),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '3. Meningkatkan kesejahteraan masyarakat dengan memprioritaskan pemberdayaan masyarakat dibidang perekonomian.',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
