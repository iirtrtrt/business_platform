import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tkinlv1/coupon.dart';

class Business extends StatefulWidget {
  const Business({super.key});

  @override
  State<Business> createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  bool couponeHasGernerated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Random coupons")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Get today's the best deal! :D",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 64),
              ElevatedButton(
                onPressed: couponeHasGernerated
                    ? () {
                        showDialog(
                          context: context,
                          builder: (_) {
                            return const SimpleDialog(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    "You have got a coupon already. ;(\nPlease try tomorrow again!",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    : () {
                        setState(() {
                          couponeHasGernerated = true;
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Coupon();
                        }));
                      },
                // style: ElevatedButton.styleFrom(
                //   disabledForegroundColor: Colors.brown.withOpacity(0.38),
                //   disabledBackgroundColor: Colors.brown.withOpacity(0.12),
                // ),
                child: const Text("Click here!"),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: const [
                    Text(
                      "Our brands",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 16,
                      child: Column(
                        children: [
                          const Text(
                            "Cafe",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: MediaQuery.of(context).size.width / 2 - 16,
                            child: CarouselSlider(
                              items: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(24),
                                  child: Image.asset(
                                    "asset/brand/cafe/ca.jpg",
                                    fit: BoxFit.fitWidth,
                                    width: double.infinity,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    "asset/brand/cafe/cc.png",
                                    fit: BoxFit.fitWidth,
                                    width: double.infinity,
                                  ),
                                ),
                              ],
                              options: CarouselOptions(
                                autoPlay: true,
                                autoPlayInterval:
                                    const Duration(milliseconds: 2400),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                viewportFraction: 1,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 16,
                      child: Column(
                        children: [
                          const Text(
                            "Fast Food",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: MediaQuery.of(context).size.width / 2 - 16,
                            child: CarouselSlider(
                              items: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    "asset/brand/fast_food/bk.png",
                                    fit: BoxFit.fitWidth,
                                    width: double.infinity,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    "asset/brand/fast_food/hb.png",
                                    fit: BoxFit.fitWidth,
                                    width: double.infinity,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    "asset/brand/fast_food/kfc.png",
                                    fit: BoxFit.fitWidth,
                                    width: double.infinity,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    "asset/brand/fast_food/mc.png",
                                    fit: BoxFit.fitWidth,
                                    width: double.infinity,
                                  ),
                                ),
                              ],
                              options: CarouselOptions(
                                autoPlay: true,
                                autoPlayInterval:
                                    const Duration(milliseconds: 1600),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                viewportFraction: 1,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Upcoming brands",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 16,
                          color: Colors.red.shade600,
                          child: const Text(
                            "Rimi",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: MediaQuery.of(context).size.width - 16,
                          color: Colors.blue.shade500,
                          child: const Text(
                            "Maxima",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: MediaQuery.of(context).size.width - 16,
                          color: Colors.yellow.shade500,
                          child: const Text(
                            "Lidl",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: MediaQuery.of(context).size.width - 16,
                          color: Colors.blueAccent.shade700,
                          child: const Text(
                            "Mego",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: MediaQuery.of(context).size.width - 16,
                          color: Colors.red.shade500,
                          child: const Text(
                            "Lats",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: MediaQuery.of(context).size.width - 16,
                          color: Colors.green.shade300,
                          child: const Text(
                            "Elvi",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: MediaQuery.of(context).size.width - 16,
                          color: Colors.red.shade400,
                          child: const Text(
                            "Top!",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
