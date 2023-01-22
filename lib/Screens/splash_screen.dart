import 'package:flutter/material.dart';
import 'package:renai_admin_app/Screens/otp_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
    Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (context)=> OtpScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Container(
        height: 250,
        width: 250,
        child: const Image(
        image: AssetImage('assets/images/renai_logo_1.png')))),
    );
  }
}