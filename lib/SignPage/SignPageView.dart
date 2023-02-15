import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../DashboardPage/dashboardpage.dart';

class SignPageView extends StatefulWidget {
  SignPageView({super.key});

  @override
  State<SignPageView> createState() => _SignPageViewState();
}

class _SignPageViewState extends State<SignPageView> {
  final List<String> imgList = [
    'assets/sliders/sliders2.jpeg',
    'assets/img/intro1.png',
    'assets/sliders/sliders3.png',
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.only(top: 5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    child: Stack(
                      children: [
                        Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              ' 40% OFF',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(children: [
        Text(
          textAlign: TextAlign.center,
          'CLOTHINA',
          style: GoogleFonts.cormorantGaramond(
            textStyle: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        SizedBox(height: 20),
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 25.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
        SizedBox(height: 80),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: SizedBox(
            height: 40,
            width: 100,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Color(0xff262626)),
                onPressed: () {
                  Get.to(() => DashboardPageView());
                },
                child: Text("Start Shopping")),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account?",
              style: TextStyle(color: Colors.grey),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Sign",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        )
      ]),
    );
  }
}
