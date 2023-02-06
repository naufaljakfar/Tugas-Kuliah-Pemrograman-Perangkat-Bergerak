import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/halaman_utama.dart';
import 'DatabaseServices.dart';

class Form_Data extends StatefulWidget {
  @override
  State<Form_Data> createState() => _Form_DataState();
}

class _Form_DataState extends State<Form_Data> {
  var nama;
  var umur;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: TextField(
                // controller: _usernamecontroller,
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
                    hintText: 'Nama',
                    hintStyle: TextStyle(color: Colors.grey)),
                onChanged: (text) {
                  setState(() {
                    nama = text;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 50, 50, 0),
              child: TextField(
                // controller: _usernamecontroller,
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
                    hintText: 'Umur',
                    hintStyle: TextStyle(color: Colors.grey)),
                onChanged: (text) {
                  setState(() {
                    umur = text;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 100, 50, 0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      DatabaseService.createIsiData(context, nama, umur);
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
                          'SIMPAN',
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
          ],
        ),
      ),
    );
  }
}
