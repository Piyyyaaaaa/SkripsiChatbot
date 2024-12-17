import 'package:apotek_aquarius/home_page.dart';
import 'package:apotek_aquarius/pages/chatbot.dart';
import 'package:apotek_aquarius/widget/category/deskripsi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Konidin extends StatefulWidget {
  const Konidin({super.key});

  @override
  State<Konidin> createState() => _KonidinState();
}

class _KonidinState extends State<Konidin> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const ChatScreen()));
        },
        child: const Badge(
          child: Icon(Icons.chat, size: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            // Foto dan Nama Obat
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: height * 0.3,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/konidin.jpeg"))),
                ),
                Positioned(
                    top: 16,
                    left: 16,
                    child: GestureDetector(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const HomePage(),
                            )),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const Icon(Icons.arrow_back),
                        ))),
                Container(
                  height: height * .07,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "Konidin",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            // Row deskripsi mengenai obat
            const Deskripsi(
              title: "Deskripsi",
              deskripsi:
                  "Konidin adalah obat yang digunakan untuk mengatasi batuk yang bisa terjadi karena alergi, flu, atau gejala bronkitis.",
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        )),
      ),
    );
  }
}
