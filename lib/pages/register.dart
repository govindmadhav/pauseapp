import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracker/constants.dart';
import 'package:tracker/pages/login.dart';

import 'homepage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBlue2,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.elliptical(300, 220),
                  bottomLeft: Radius.elliptical(160, 70)),
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height) / 2.75,
                decoration: const BoxDecoration(
                    color: kDarkBlue,
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.white12,
                          BlendMode.modulate,
                        ),
                        image: AssetImage("assets/images/sparkles.png"))),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75, left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('NAMASTE  ',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                      Text('🙏',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 30, top: 15, right: 30),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                      'Thank you for choosing "PAUSE" We welcome you to our rewarding and caring family, Register now! ',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 18,
                          height: 1.7,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: (MediaQuery.of(context).size.height) / 7.0,
                ),
                //Namebox
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    cursorColor: kDarkBlue,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 15),
                      hintText: "Enter your name",
                      hintStyle: GoogleFonts.inter(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                //emailbox
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    cursorColor: kDarkBlue,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 15),
                      hintText: "Enter your email",
                      hintStyle: GoogleFonts.inter(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                //whatsappno
                const SizedBox(height: 25),
                Stack(alignment: Alignment.centerRight, children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      cursorColor: kDarkBlue,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(left: 15),
                        hintText: "Enter your whatsapp number",
                        hintStyle: GoogleFonts.inter(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Tooltip(
                    showDuration: const Duration(seconds: 3),
                    margin: const EdgeInsets.only(left: 60, right: 60),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(10)),
                    textStyle: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    message:
                        "We will send notifications and reminders on this number",
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width / 10),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.help_outline,
                            color: Colors.grey.shade700),
                      ),
                    ),
                  )
                ]),

                const SizedBox(
                  height: 25,
                ),
                //passwordbox
                Stack(alignment: Alignment.centerRight, children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: TextField(
                        obscureText: hidePassword,
                        cursorColor: kDarkBlue,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your password",
                          hintStyle: GoogleFonts.inter(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 10),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      icon: Icon(hidePassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  )
                ]),
                SizedBox(height: MediaQuery.of(context).size.width / 12),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [
                          Color(0xFF00CCFF),
                          Color(0xFFC066D5),
                          Color(0xFFE4599A),
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(1.0, 0.0),
                        stops: [0.3, 0.8, 1.0],
                        tileMode: TileMode.clamp),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Material(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Register  ",
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Text("🔐",
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                            ]),
                      ),
                    ),
                    color: Colors.transparent,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width / 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already a member ?",
                        style: GoogleFonts.inter(
                            color: Colors.white54,
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: Text("Login now",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: Text("Skip registration",
                      style: GoogleFonts.inter(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
