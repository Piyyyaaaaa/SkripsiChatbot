import 'package:apotek_aquarius/widget/Obat/ATS.dart';
import 'package:apotek_aquarius/widget/Obat/abbocath.dart';
import 'package:apotek_aquarius/widget/Obat/ace_max.dart';
import 'package:apotek_aquarius/widget/Obat/acetylcysteine.dart';
import 'package:apotek_aquarius/widget/Obat/acifar_cream.dart';
import 'package:apotek_aquarius/widget/Obat/acifar_tablet.dart';
import 'package:apotek_aquarius/widget/Obat/afolat.dart';
import 'package:apotek_aquarius/widget/Obat/alco_plus.dart';
import 'package:apotek_aquarius/widget/Obat/allerin_syrup.dart';
import 'package:apotek_aquarius/widget/Obat/altamed_test.dart';
import 'package:apotek_aquarius/widget/Obat/ambeven.dart';
import 'package:apotek_aquarius/widget/Obat/amoxillin_syrup.dart';
import 'package:apotek_aquarius/widget/Obat/anabion_syrup.dart';
import 'package:apotek_aquarius/widget/Obat/anadium.dart';
import 'package:apotek_aquarius/widget/Obat/antiza.dart';
import 'package:apotek_aquarius/widget/Obat/becomzet.dart';
import 'package:apotek_aquarius/widget/Obat/byebyefever.dart';
import 'package:apotek_aquarius/widget/Obat/corovit.dart';
import 'package:apotek_aquarius/widget/Obat/curcumaplus.dart';
import 'package:apotek_aquarius/widget/Obat/dapyrin.dart';
import 'package:apotek_aquarius/widget/Obat/dicom.dart';
import 'package:apotek_aquarius/widget/Obat/dolgesik.dart';
import 'package:apotek_aquarius/widget/Obat/episan.dart';
import 'package:apotek_aquarius/widget/Obat/etabion.dart';
import 'package:apotek_aquarius/widget/Obat/flumin.dart';
import 'package:apotek_aquarius/widget/Obat/konidin.dart';
import 'package:apotek_aquarius/widget/Obat/lambucid.dart';
import 'package:apotek_aquarius/widget/Obat/minyaktelon_lang.dart';
import 'package:apotek_aquarius/widget/Obat/neozep.dart';
import 'package:apotek_aquarius/widget/Obat/neurobion.dart';
import 'package:apotek_aquarius/widget/Obat/norit.dart';
import 'package:apotek_aquarius/widget/Obat/omegavit.dart';
import 'package:apotek_aquarius/widget/Obat/panadol_biru.dart';
import 'package:apotek_aquarius/widget/Obat/panadolanak.dart';
import 'package:apotek_aquarius/widget/Obat/panadolflubatuk.dart';
import 'package:apotek_aquarius/widget/Obat/paratusin.dart';
import 'package:apotek_aquarius/widget/Obat/promag.dart';
import 'package:apotek_aquarius/widget/Obat/ramabion.dart';
import 'package:apotek_aquarius/widget/Obat/redoxon.dart';
import 'package:apotek_aquarius/widget/Obat/salep_kulit88.dart';
import 'package:apotek_aquarius/widget/Obat/sanmol_drops.dart';
import 'package:apotek_aquarius/widget/Obat/suprabion.dart';
import 'package:apotek_aquarius/widget/Obat/ticomag.dart';
import 'package:apotek_aquarius/widget/Obat/tolak_angin.dart';
import 'package:apotek_aquarius/widget/Obat/tolakanginbatuk.dart';
import 'package:apotek_aquarius/widget/Obat/ultraflu.dart';
import 'package:apotek_aquarius/widget/Obat/vetasen.dart';
import 'package:apotek_aquarius/widget/Obat/viostin.dart';
import 'package:apotek_aquarius/widget/Obat/voltadex.dart';
import 'package:apotek_aquarius/widget/Obat/wiros.dart';
import 'package:apotek_aquarius/widget/Obat/xenical.dart';
import 'package:apotek_aquarius/widget/Obat/xonce.dart';
import 'package:apotek_aquarius/widget/category/samping.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int harga = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: 70, width: double.infinity, color: Colors.blue),
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Halo, selamat datang di Apotek Aquarius",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    /*
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(15, 140, 228, 255),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false,
                          decoration: InputDecoration(
                              hintText: "Cari obat yang kamu inginkan",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                    */
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Produk di Apotek Aquarius",
                    style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllerinSyrup()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/allerin_syrup.jpg",
                      title: "Allerin Syrup",
                      // harga: "Rp. 17.500"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AmoxillinSyrup()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/amoxillin_syrup.png",
                        title: "Amoxillin Syrup",
                        //harga: "Rp. 7.500"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AltamedTest()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/altamed_testantigen.jpg",
                      title: "Altamed Test",
                      //harga: "Rp. 20.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Ats()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/ATS.jpg",
                        title: "Anti Tetanus",
                        //harga: "Rp. 20.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SalepKulit88()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/salep_88.jpg",
                      title: "88 Salep Kulit",
                      //harga: "Rp. 14.000"
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Abbocath(),
                        ),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/suntikan_abbocath.jpg",
                      title: "Abbocath",
                      //harga: "Rp. 6.000"
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AceMax()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/ace_max.jpeg",
                      title: "Ace-Maxs",
                      //harga: "Rp. 175.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Acetylcysteine()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/acetylcysteine.jpg",
                        title: "Acetylcysteine",
                        //harga: "Rp. 10.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AcifarTablet()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/acifar_tablet.jpeg",
                      title: "Acifar Tablet",
                      //harga: "Rp. 6.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AcifarCream()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/acifar_cream.jpeg",
                        title: "Acifar Cream",
                        //harga: "Rp. 7.500"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AlcoPlus()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/alco_plus.jpg",
                      title: "Alco Plus",
                      //harga: "Rp. 60.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Ambeven()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/ambeven.jpg",
                        title: "Ambeven",
                        //harga: "Rp. 18.500"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnabionSyrup()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/anabion_syrup.jpg",
                      title: "Anabion Syrup",
                      //harga: "Rp. 8.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Afolat()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/afolat.png",
                        title: "Afolat",
                        //harga: "Rp. 2.500"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Neozep()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/neozep.jpg",
                      title: "Neozep",
                      //harga: "Rp. 3.500"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MinyaktelonLang()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/minyak_telon.jpeg",
                        title: "Minyak Telon",
                        //harga: "Rp. 7.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Lambucid()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/lambucid.jpeg",
                      title: "Lambucid",
                      //harga: "Rp. 3.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Konidin()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/konidin.jpeg",
                        title: "Konidin",
                        //harga: "Rp. 3.500"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Antiza()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/antiza.jpeg",
                      title: "Antiza",
                      //harga: "Rp. 17.500"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Anadium()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/anadium.png",
                        title: "Anadium",
                        //harga: "Rp. 10.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Norit()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/norit.jpeg",
                      title: "Norit",
                      //harga: "Rp. 18.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Omegavit()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/omegavit.jpeg",
                        title: "Omegavit",
                        //harga: "Rp. 5.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PanadolBiru()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/panadol_biru.jpeg",
                      title: "Panadol Biru",
                      //harga: "Rp. 12.500"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Paratusin()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/paratusin.jpeg",
                        title: "Paratusin",
                        //harga: "Rp. 17.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Promag()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/promag.jpeg",
                      title: "Promag",
                      //harga: "Rp. 9.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Redoxon()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/redoxon.jpeg",
                        title: "Redoxon",
                        //harga: "Rp. 45.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SanmolDrops()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/sanmol_drop.jpg",
                      title: "Sanmol Drops",
                      //harga: "Rp. 25.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Ticomag()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/ticomag.jpeg",
                        title: "Ticomag",
                        //harga: "Rp. 3.500"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TolakAngin()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/tolak angin.jpg",
                      title: "Tolak Angin",
                      //harga: "Rp. 4.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Viostin()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/viostin.jpg",
                        title: "Viostin",
                        //harga: "Rp. 32.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Vetasen()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/vetasen.jpg",
                      title: "Vetasen",
                      //harga: "Rp. 4.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Wiros()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/wiros.jpg",
                        title: "Wiros",
                        //harga: "Rp. 32.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Xenical()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/xenical.jpg",
                      title: "Xenical",
                      //harga: "Rp. 4.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Xonce()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/xonce.jpg",
                        title: "Xonce",
                        //harga: "Rp. 32.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Voltadex()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/voltadex.png",
                      title: "Voltadex",
                      //harga: "Rp. 4.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Ultraflu()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/ultraflu.jpg",
                        title: "Ultraflu",
                        //harga: "Rp. 32.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Tolakanginbatuk()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/tolakangin_batuk.jpg",
                      title: "Tolak Angin Batuk",
                      //harga: "Rp. 4.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Suprabion()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/suprabion.jpg",
                        title: "Suprabion",
                        //harga: "Rp. 32.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Ramabion()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/ramabion.jpg",
                      title: "Ramabion",
                      //harga: "Rp. 4.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Panadolflubatuk()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/panadol_flubatuk.jpg",
                        title: "Panadol Flu & Batuk",
                        //harga: "Rp. 32.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Panadolanak()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/panadol_anak.jpg",
                      title: "Panadol Anak",
                      //harga: "Rp. 4.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Neurobion()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/neurobion.jpg",
                        title: "Neurobion",
                        //harga: "Rp. 32.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Byebyefever()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/byebyefever.jpg",
                      title: "Bye Bye Fever Anak",
                      //harga: "Rp. 4.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Corovit()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/corovit.jpg",
                        title: "Corovit",
                        //harga: "Rp. 32.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Dolgesik()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/dolgesik.jpg",
                      title: "Dolgesik",
                      //harga: "Rp. 4.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Dapyrin()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/dapyrin.jpg",
                        title: "Dapyrin",
                        //harga: "Rp. 32.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Dicom()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/dicom.jpg",
                      title: "Dicom",
                      //harga: "Rp. 4.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Episan()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/episan.jpg",
                        title: "Episan",
                        //harga: "Rp. 32.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Flumin()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/flumin.jpg",
                      title: "Flumin",
                      //harga: "Rp. 4.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Etabion()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/etabion.jpeg",
                        title: "Etabion",
                        //harga: "Rp. 32.000"
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Curcumaplus()),
                      );
                    },
                    child: const samping(
                      imagePath: "assets/curcumaplus.jpeg",
                      title: "Curcuma Plus",
                      //harga: "Rp. 4.000"
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Becomzet()),
                        );
                      },
                      child: const samping(
                        imagePath: "assets/becomzet.jpg",
                        title: "Becom Zet",
                        //harga: "Rp. 32.000"
                      )),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
