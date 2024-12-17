import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class samping extends StatelessWidget {
  final String imagePath;
  final String title;
  //final Product product;
  // final String harga;
  const samping(
      {super.key,
      required this.imagePath,
      required this.title,
      //required this.product
      // required this.harga,
      });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: 130,
          height: 150,
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 90,
              ),
              Text(
                title,
                style: GoogleFonts.aBeeZee(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
              /*
              Row(
                children: [
                  Text(
                    harga,
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ],
              )
              */
            ],
          ),
        ),
      ),
    );
  }
}
