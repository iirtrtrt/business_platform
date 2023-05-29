import 'package:flutter/material.dart';

class Coupon extends StatelessWidget {
  const Coupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Today's coupon"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "asset/brand/fast_food/hb.png",
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width / 2,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Hesburger 50% off",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Image.asset(
                "asset/barcode.png",
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width / 5 * 3,
              ),
              const Text("This coupon is valid only for today."),
            ],
          ),
        ),
      ),
    );
  }
}
