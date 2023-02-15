import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porto1_app/BuyPage/buypage.dart';

import 'widget/cartwidget.dart';

class CartPageView extends StatelessWidget {
  const CartPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white24,
          centerTitle: true,
          title: Text(
            "Cart",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
          )),
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.all(20),
          children: [
            CartWidget(
                deskripsi: "Maeve Cassandra Maxi Dress",
                gambar: "assets/img/cart2.png",
                harga: "Rp160.000"),
            SizedBox(height: 20),
            CartWidget(
                deskripsi: "5-pack rings",
                gambar: "assets/img/cart1.png",
                harga: "Rp160.000.000"),
            SizedBox(height: 30),
            Card(
              elevation: 10,
              child: ListTile(
                title: Text(
                  "TOTAL",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                trailing: Text("160.160.000",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            height: 40,
            width: Get.width,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    backgroundColor: Color(0xff02042E)),
                onPressed: () {
                  Get.to(() => BuyPageView());
                },
                child: Text(
                  "Proceed to payment",
                  style: GoogleFonts.archivo(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                )),
          ),
        ),
      ]),
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
