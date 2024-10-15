import 'package:ecommerce_shoes/features/home/page/index/page.dart';
import 'package:ecommerce_shoes/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    Future.delayed(const Duration(seconds: 3)).then((_) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainPage(),),);
      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Image.asset('assets/images/splash_screen.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            ),
          ],
      ),
    );
  }
}
