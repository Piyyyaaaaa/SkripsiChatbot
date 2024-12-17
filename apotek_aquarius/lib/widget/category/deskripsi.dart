import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Deskripsi extends StatelessWidget {
  final String title;
  final String deskripsi;
  const Deskripsi({
    required this.title,
    required this.deskripsi,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:
                GoogleFonts.aBeeZee(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            deskripsi,
            style: GoogleFonts.aBeeZee(fontSize: 16),
          ),
        ],
      ),
    );
  }
}