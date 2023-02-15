import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../SignPage/SignPageView.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Stack(children: [
          Positioned(
            right: -50,
            top: -20,
            child: Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/intro1.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: Stack(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shop the latest styles",
                                style: TextStyle(
                                    fontSize: 42,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff262626)),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_right_alt_sharp,
                                    size: 42,
                                    color: Color(0xff262626),
                                  ))
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ]),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(top: 30),
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => SignPageView());
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
