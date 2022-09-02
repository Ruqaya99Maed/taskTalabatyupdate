



import 'package:dna3/home_page.dart';
import 'package:dna3/login.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      backgroundImage:AssetImage('images/2022-08-28 05.47.03.jpg') ,
      logo: Image.asset(
        'images/2022-08-28 05.47.03.jpg',height: 1,width: 1,),
      title: Text(
        "",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: Text("Loading..."),
      navigator: Login(),
      durationInSeconds: 5,
    );
  }
}