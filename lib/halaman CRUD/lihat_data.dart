import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/halaman_utama.dart';
import 'package:google_fonts/google_fonts.dart';
import 'DatabaseServices.dart';

class Lihat_form extends StatefulWidget {
  const Lihat_form({super.key});

  @override
  State<Lihat_form> createState() => _Lihat_formState();
}

class _Lihat_formState extends State<Lihat_form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
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
            title: Text('Data nama', style: GoogleFonts.poppins(color: Colors.black, textStyle: TextStyle(fontSize: 16)),),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Column(
              children: [
                StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('Data Diri')
                      .snapshots(),
                  builder: (context, snapshots){
                    if (snapshots.hasData) {
                      return ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: snapshots.data!.docs.length,
                        itemBuilder: (context, index) {
                          DocumentSnapshot documentSnapshot =
                              snapshots.data!.docs[index];
                          print("${documentSnapshot["nama"]}");
                          return InkWell(
                            child: ListTile(
                              leading: Icon(
                                Icons.person,
                                size: 60,
                              ),
                              title: Text("Nama  : "+documentSnapshot["nama"]),
                              subtitle: Text("Umur     : "+documentSnapshot["umur"]),
                            ),
                          );
                        },
                      );
                    } else {
                      return Text('Tidak Ada Data');
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
