import 'dart:async';
import 'package:flutter/material.dart';

import '../login_Screen/loginScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child:Image.asset("assets/images/Rectangle513.png",fit: BoxFit.cover,)
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
     Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>loginScreen()),
     );
    });

  }
}
