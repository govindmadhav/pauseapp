import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracker/constants.dart';
import 'package:tracker/pages/homepage.dart';
import 'package:tracker/pages/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBlue2,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.elliptical(300, 220),
                    bottomLeft: Radius.elliptical(160, 70)),
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  height: (MediaQuery.of(context).size.height) / 2.70,
                  decoration: const BoxDecoration(
                      color: kDarkBlue,
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                            Colors.white12,
                            BlendMode.modulate,
                          ),
                          image: AssetImage("assets/images/sparkles.png"))),
                  child: Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Image.asset(
                      "assets/images/login.png",
                      height: 100,
                      width: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 30),
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
                padding: const EdgeInsets.only(left: 30, top: 15),
                width: MediaQuery.of(context).size.width,
                child: Text("Welcome back, you've been missed",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: 30,
              ),
              //emailbox
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: emailController,
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
                      controller: passwordController,
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
                    icon: Icon(
                        hidePassword ? Icons.visibility_off : Icons.visibility),
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
                            Text("Login  ",
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
              SizedBox(height: MediaQuery.of(context).size.width / 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member ?",
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
                              builder: (context) => const RegisterPage()));
                    },
                    child: Text("Register Now",
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
        ),
      ),
    );
  }

  // Future logIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: emailController.text.trim(),
  //       password: passwordController.text.trim());
  // }
}
