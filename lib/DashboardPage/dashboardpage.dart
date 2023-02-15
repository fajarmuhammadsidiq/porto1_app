import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import 'Widget/topbrand.dart';
import 'Widget/vuitton.dart';

class DashboardPageView extends StatelessWidget {
  const DashboardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu_open_outlined,
                      color: Colors.black,
                    )),
                SizedBox(width: 50),
                Text(
                  'CLOTHINA',
                  style: GoogleFonts.cormorantGaramond(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: Get.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 5,
                    spreadRadius: 2,
                    color: Colors.black26,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: Get.width,
                      height: Get.height,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'SUMMER COLLECTION',
                            style: GoogleFonts.archivo(
                              textStyle: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ),
                          SizedBox(height: 50),
                          Text(
                            textAlign: TextAlign.center,
                            '40% OFF',
                            style: GoogleFonts.archivo(
                              textStyle: TextStyle(
                                  color: Color(0xff262626),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31),
                            ),
                          ),
                          SizedBox(height: 50),
                          Text(
                            textAlign: TextAlign.center,
                            'For selected styles',
                            style: GoogleFonts.archivo(
                              textStyle: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: Get.height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: Colors.green,
                        image: DecorationImage(
                            image: AssetImage("assets/sliders/sliders2.jpeg"),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Top trends',
                  style: GoogleFonts.archivo(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    textAlign: TextAlign.center,
                    'see all',
                    style: GoogleFonts.archivo(
                      textStyle: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              width: Get.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TopbrandsWidget(
                        nama: "Maeve Cassandra Maxi Dress",
                        gambar: "assets/dashboard/tp1.png"),
                    TopbrandsWidget(
                        nama: "Floral Tie Strap",
                        gambar: "assets/dashboard/tp2.png"),
                    TopbrandsWidget(
                        nama: "Floral Tie Strap",
                        gambar: "assets/dashboard/tp3.png"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Louis Vuitton',
                  style: GoogleFonts.archivo(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    textAlign: TextAlign.center,
                    'see all',
                    style: GoogleFonts.archivo(
                      textStyle: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              width: Get.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    VuittonWidget(
                        nama: "Maeve Cassandra Maxi Dress",
                        gambar: "assets/dashboard/lv1.png"),
                    VuittonWidget(
                        nama: "Floral Tie Strap",
                        gambar: "assets/dashboard/lv2.png"),
                    VuittonWidget(
                        nama: "Floral Tie Strap",
                        gambar: "assets/dashboard/lv3.png"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(elevation: 8.0, items: [
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.dashboard_customize_outlined,
              color: Colors.black,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.search,
              color: Colors.black,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.person_outline_outlined,
              color: Colors.black,
            )),
      ]),
    );
  }
}
