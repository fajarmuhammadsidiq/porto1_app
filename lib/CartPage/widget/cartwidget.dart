import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartWidget extends StatelessWidget {
  CartWidget({
    required this.gambar,
    required this.deskripsi,
    required this.harga,
    super.key,
  });

  final gambar;
  final deskripsi;
  final harga;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 5,
              spreadRadius: 2,
              color: Colors.black26,
            ),
          ],
          borderRadius: BorderRadius.circular(5)),
      child: Stack(children: [
        Row(
          children: [
            Container(
              width: 100,
              height: Get.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("$gambar"), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$deskripsi"),
                  SizedBox(height: 40),
                  Text(
                    '$harga',
                    style: GoogleFonts.archivo(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff262626)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          right: 15,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.schedule_rounded),
                SizedBox(height: 30),
                Text("Qty : 1")
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
