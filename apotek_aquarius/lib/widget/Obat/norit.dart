import 'package:apotek_aquarius/home_page.dart';
import 'package:apotek_aquarius/pages/chatbot.dart';
import 'package:apotek_aquarius/widget/category/deskripsi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Norit extends StatefulWidget {
  const Norit({super.key});

  @override
  State<Norit> createState() => _NoritState();
}

class _NoritState extends State<Norit> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ChatScreen()));
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
                          image: AssetImage("assets/norit.jpeg"))),
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
                      "Norit",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 12,
                  right: 16,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ChatScreen())
                    ),
                    child: Badge(
                      child: Icon(Icons.chat_outlined,
                      size: 35,
                      color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
            // Row deskripsi mengenai obat
            const Deskripsi(
              title: "Deskripsi",
              deskripsi:
                  "NORIT merupakan tablet karbon aktif yang digunakan untuk membantu mengurangi frekuensi buang air besar dan menyerap racun pada penderita diare. Bukan sebagai pengganti oralit.",
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
