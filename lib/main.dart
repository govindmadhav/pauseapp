import 'package:flutter/material.dart';
import 'package:tracker/introscreens.dart';
import 'package:tracker/pages/homepage.dart';
import 'package:flutter/services.dart';
import 'package:tracker/pages/login.dart';
import 'package:tracker/pages/register.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: const Scaffold(body: IntroScreen()),
        home: const Scaffold(
          body: RegisterPage(),
        ));
  }
}
