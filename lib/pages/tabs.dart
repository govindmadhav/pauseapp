import 'package:flutter/material.dart';
import 'package:tracker/constants.dart';
import 'package:tracker/pages/others.dart';
import 'package:tracker/pages/redeem.dart';

class Tabscreen extends StatelessWidget {
  const Tabscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kDarkBlue,
          title: const Text("REDEEM"),
          bottom: const TabBar(tabs: [
            Tab(
              text: "UPI",
            ),
            Tab(
              text: "OTHERS",
            ),
          ]),
        ),
        body: const TabBarView(children: [Redeem(), Redeemothers()]),
      ));
}
