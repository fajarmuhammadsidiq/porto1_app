import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../CartPage/cartpageview.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({super.key});

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  List<String> data = ["S", "M", "L", "XL"];

  List<String> dataSize = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white24,
          centerTitle: true,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
          )),
      body: Column(
        children: [
          Expanded(
              child: Container(
            width: Get.width,
            height: Get.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.limeAccent,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/dashboard/detail1.png"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(width: 40),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: 50,
                        height: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 2,
                                spreadRadius: 2,
                                color: Colors.black26,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Qty",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.black,
                            ),
                            Text(textAlign: TextAlign.center, "1")
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                      Container(
                        width: 50,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 2,
                                spreadRadius: 2,
                                color: Colors.black26,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Size",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "S",
                            ),
                            Text(
                              "M",
                            ),
                            Text(
                              "L",
                            ),
                            Text(
                              "XL",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
                color: Color(0xffEDEDED),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Buy This Outfit',
                      style: GoogleFonts.archivo(
                        textStyle: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          weight: 20,
                        ),
                        Text("4.5")
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Maeve Cassandra Maxi Dress',
                  style: GoogleFonts.archivo(
                    textStyle: TextStyle(
                        color: Color(0xff262626),
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Produk Detail',
                  style: GoogleFonts.archivo(
                    textStyle: TextStyle(
                        color: Color(0xff262626),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Style No. 4130370060007; Color Code: 08 ,Cotton,rayon,Flutter sleeves,Spliced neck,Pintucked bodice,Henley-style button front,Maxi silhouette,Ruffled hem,Pullover styling,Machine wash,Imported',
                  style: GoogleFonts.archivo(
                    textStyle: TextStyle(color: Colors.grey[600], fontSize: 18),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Dimension',
                  style: GoogleFonts.archivo(
                    textStyle: TextStyle(
                        color: Color(0xff262626),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Standard falls 56 from shoulderPetite falls 52 from shoulder",
                  style: GoogleFonts.archivo(
                    textStyle: TextStyle(color: Colors.grey[600], fontSize: 18),
                  ),
                ),
              ],
            ),
          )),
          Container(
            width: Get.width,
            color: Color(0xffEDEDED),
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp160.000',
                    style: GoogleFonts.archivo(
                      textStyle:
                          TextStyle(color: Color(0xff262626), fontSize: 27),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            backgroundColor: Color(0xff02042E)),
                        onPressed: () {
                          Get.to(() => CartPageView());
                        },
                        child: Text(
                          "Add to cart",
                          style: GoogleFonts.archivo(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
