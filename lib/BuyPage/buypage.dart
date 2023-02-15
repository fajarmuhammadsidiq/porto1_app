import 'package:flutter/material.dart';

class BuyPageView extends StatelessWidget {
  const BuyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white24,
          centerTitle: true,
          title: Text(
            "Checkout",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
          )),
    );
  }
}
