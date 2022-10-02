import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracker/constants.dart';

class Redeemothers extends StatefulWidget {
  const Redeemothers({Key? key}) : super(key: key);

  @override
  State<Redeemothers> createState() => _RedeemothersState();
}

class _RedeemothersState extends State<Redeemothers> {
  @override
  Widget build(BuildContext context) {
    double _height = (MediaQuery.of(context).size.height) / 2.4;
    return Scaffold(
        backgroundColor: kDarkBlue2,
        body: SingleChildScrollView(
          child: Stack(children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.elliptical(300, 220),
                        bottomLeft: Radius.elliptical(160, 70)),
                    child: Container(
                      height: (MediaQuery.of(context).size.height) / 3.8,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: kDarkBlue),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            "assets/images/avatar.png",
                            height: 65,
                            width: 65,
                          ),
                          const SizedBox(height: 8),
                          Text("HARSHIT ARORA",
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                          const SizedBox(height: 8),
                          Text("harshit@harshit.com",
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  )
                ]),
            Column(
              children: [
                SizedBox(
                  height: (MediaQuery.of(context).size.height) / 3.1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text("REWARD COUPONS:",
                      style: GoogleFonts.inter(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Image.asset(
                        "assets/images/courserac3.png",
                        height: 250,
                      ),
                    ),
                    Image.asset(
                      "assets/images/gplayc2.png",
                      height: 250,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Image.asset(
                        "assets/images/zomatoc1.png",
                        height: 250,
                      ),
                    ),
                    Image.asset(
                      "assets/images/swiggyc4.png",
                      height: 250,
                    ),
                  ],
                )
              ],
            ),
          ]),
        ));
  }
}
