import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:porto1_app/Viewproduct/viewproduct.dart';

class TopbrandsWidget extends StatelessWidget {
  TopbrandsWidget({
    required this.gambar,
    required this.nama,
    super.key,
  });

  final nama;
  final gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 120,
      height: Get.height,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Get.to(() => ViewProduct());
            },
            child: Container(
              height: 150,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(
                      "$gambar",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(textAlign: TextAlign.center, "$nama"),
        ],
      ),
    );
  }
}
