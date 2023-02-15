import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porto1_app/ProductDetail/productdetail.dart';

class ViewProduct extends StatelessWidget {
  const ViewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/dashboard/view1.png"),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Maeve Cassandra \nMaxi Dress",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  width: Get.width,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                                topStart: Radius.circular(90 / 2),
                                topEnd: Radius.circular(90 / 2)))),
                    onPressed: () {
                      Get.to(() => ProductDetailView());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          'Buy This Outfit',
                          style: GoogleFonts.archivo(
                            textStyle: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_up_outlined,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 50,
            child: IconButton(
                icon: Icon(Icons.keyboard_arrow_left_outlined, size: 40),
                onPressed: () {
                  Get.back();
                }),
          )
        ],
      ),
    );
  }
}
