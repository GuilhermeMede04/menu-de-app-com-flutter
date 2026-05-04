import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SegundaPagina extends StatefulWidget {
  const SegundaPagina({super.key});

  @override
  State<SegundaPagina> createState() => _SegundaPaginaState();
}

class _SegundaPaginaState extends State<SegundaPagina> {
  bool favorito = false;
  bool mostrarMais = false;

  Widget espacoAltura(double altura) {
    return SizedBox(height: altura);
  }

  Widget botaoInfo(String texto) {
    return Expanded(
      child: SizedBox(
        height: 45,
        child: OutlinedButton(
          onPressed: () {},

          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.black),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),

          child: Text(
            texto,

            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },

          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),

        actions: [

          IconButton(
            onPressed: () {},

            icon: const Icon(
              Icons.share_outlined,
              color: Colors.black,
            ),
          ),

          IconButton(
            onPressed: () {},

            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),

          IconButton(
            onPressed: () {},

            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Container(
                width: double.infinity,
                height: 450,

                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/produto1.png',
                    ),

                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            espacoAltura(20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Text(
                          'FPSA Hyaluronic Acid Essence Water',

                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text(
                          '120 ml',

                          style: GoogleFonts.poppins(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: [

                      Text(
                        '\$35',

                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),

                      Text(
                        '\$30',

                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Image.asset(
                'assets/avaliação.png',
                width: 90,
              ),
            ),

            espacoAltura(30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Row(
                children: [

                  botaoInfo('Description'),

                  const SizedBox(width: 10),

                  botaoInfo('How To Use'),

                  const SizedBox(width: 10),

                  botaoInfo('Ingredients'),
                ],
              ),
            ),

            espacoAltura(30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text(
                    mostrarMais
                        ? 'FPSA Hyaluronic Acid Essence Water deeply hydrates skin, restores moisture balance, improves elasticity, smooths texture, refreshes dulness and absorbs quickly.'
                        : 'A premium skincare product designed to hydrate and restore your natural glow.',

                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {

                      setState(() {
                        mostrarMais = !mostrarMais;
                      });
                    },

                    child: Text(
                      mostrarMais
                          ? 'See Less'
                          : 'See More',

                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            espacoAltura(100),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),

        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
        ),

        child: Row(
          children: [

            GestureDetector(
              onTap: () {

                setState(() {
                  favorito = !favorito;
                });
              },

              child: Container(
                width: 60,
                height: 60,

                color: Colors.grey.shade300,

                child: Icon(
                  favorito
                      ? Icons.favorite
                      : Icons.favorite_border,

                  color: favorito
                      ? Colors.red
                      : Colors.black,
                ),
              ),
            ),

            const SizedBox(width: 20),

            Expanded(
              child: SizedBox(
                height: 60,

                child: ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),

                  child: const Text(
                    'Add to Cart',

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}