import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Goleyakh',
        style: GoogleFonts.karla(
          fontSize: 14,
          color: Colors.grey,
        ),
      )),
    );
  }
}
