import 'dart:async';
import 'package:first_project/viewer/login_Screen/loginScreen.dart';
import 'package:flutter/material.dart';
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
     Navigator.push(context,MaterialPageRoute(builder: (context)=>loginScreen()),
     );
    });

  }
}
