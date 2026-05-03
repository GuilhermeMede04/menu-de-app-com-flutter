import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menu_de_app/paginas/segunda_pagina.dart';

class PaginaHome extends StatelessWidget {
  const PaginaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Veloura',
          style: GoogleFonts.poppins(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Container(
        width: double.infinity,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text(
              'Radiant Glow',

              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'Skin with a radiant natural glow',

              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),

            Container(
              width: double.infinity,
              height: 650,

              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/menu2.png',
                  ),

                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: SizedBox(
        width: 60,
        height: 60,

        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SegundaPagina()),
            );
          },

          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),

          child: const Icon(
            Icons.arrow_outward,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}